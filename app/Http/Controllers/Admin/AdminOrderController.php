<?php

namespace App\Http\Controllers\Admin;

use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Coa;
use App\Models\Client;
use App\Models\Sales;
use App\Models\SalesList;
use App\Models\Collection;
use App\Models\CollectionList;
use App\Models\AccountTransactionAuto;
use App\Models\ProductVariant;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Services\FrontEndService;
use Barryvdh\DomPDF\Facade\Pdf;

class AdminOrderController extends Controller
{
    protected $adminService;

    public function __construct(FrontEndService $adminService)
    {
        $this->adminService = $adminService;
    }

    /**
     * 📦 Order List (Admin – All Orders)
     */
    public function index(Request $request)
    {
        $query = Order::query();

        // 🔍 Search by order number or status
        if ($request->filled('search')) {
            $query->where(function ($q) use ($request) {
                $q->where('order_number', 'like', '%' . $request->search . '%')
                  ->orWhere('status', 'like', '%' . $request->search . '%');
            });
        }

       $orders = $query->latest()->paginate(10)->withQueryString();

        return view('admin.order.orderList', compact('orders'));
    }

    /**
     * 🔄 Update Order Status (Admin)
     */
    public function updateStatus(Request $request, Order $order)
    {
        $request->validate([
            'status' => 'required|string'
        ]);
        dd($request->all(),$order,$order->items);

         try {
            DB::transaction(function () use ($request) {
                $data = Sales::create([
                    'client_id' => $request->client_id,
                    'store_id'  => $request->store_id,
                    'sales_officer_id' => $request->sales_officer_id,
                    'coa_id'    => $request->sale_type == 'Cash' ? $request->coa_id : null,
                    'sale_type' => $request->sale_type,
                    'invoice'   => $this->invoiceNo(),
                    'date'      => date('Y-m-d', strtotime($request->date)),
                    'amount'    => $request->total_amount,
                    'discount'  => $request->discount,
                    'net_amount' => $request->net_amount,
                    'paid'      => $request->sale_type == 'Cash' ? $request->net_amount : 0.00,
                    'remarks'   => $request->remarks,
                    'created_by' => Auth::id(),
                ]);

                foreach ($request->product_edition_id as $product_edition_id) {
                    $discount = $request->total_amount > 0 ? ($request->discount / $request->total_amount) * $request->amount[$product_edition_id] : 0.00;
                    SalesList::create([
                        'sales_id' => $data->id,
                        'store_id' => $request->store_id,
                        'client_id' => $request->client_id,
                        'product_id' => $request->product_id[$product_edition_id],
                        'product_edition_id' => $product_edition_id,
                        'price' => $request->price[$product_edition_id],
                        'commission' => $request->commission[$product_edition_id],
                        'commission_amount' => $request->commission[$product_edition_id] * $request->qty[$product_edition_id],
                        'rate' => $request->rate[$product_edition_id],
                        'qty' => $request->qty[$product_edition_id],
                        'amount' => $request->amount[$product_edition_id],
                        'discount' => $discount,
                        'net_amount' => $request->amount[$product_edition_id] - $discount,
                    ]);
                }

                $client = Client::find($request->client_id);
                if ($client->coa) {
                    $income_head = Coa::where('head_type', 'I')->where('head_name', 'Product Sales')->first();
                    $headCode = collect([
                        '0' => $client->coa->head_code,
                        '1' => $income_head->head_code,
                    ]);

                    $debit_amount = collect([
                        '0' => $request->net_amount,
                        '1' => 0.00
                    ]);

                    $credit_amount = collect([
                        '0' => 0.00,
                        '1' => $request->net_amount,
                    ]);

                    $countHead = count($headCode);
                    $postData = [];
                    for ($i = 0; $i < $countHead; $i++) {
                        $coa = Coa::where('head_code', $headCode[$i])->first();
                        $postData[] = [
                            'voucher_no' => $data->invoice,
                            'voucher_type' => "Client Sales",
                            'date' => date('Y-m-d', strtotime($request->date)),
                            'coa_id' => $coa->id,
                            'coa_head_code' => $headCode[$i],
                            'narration' => 'Client Sales Against Invoice No - ' . $data->invoice,
                            'debit_amount' => $debit_amount[$i],
                            'credit_amount' => $credit_amount[$i],
                            'created_by' => Auth::id(),
                            'created_at' => Carbon::now(),
                            'updated_at' => Carbon::now()
                        ];
                    }
                    AccountTransactionAuto::insert($postData);
                }

            });
        } catch (\Exception $e) {
            return back()->withErrors($e->getMessage());
        }

        $order->update([
            'status' => $request->status
        ]);


        if ($request->status == 'cancelled') {
            // Restore stock
            foreach ($order->items as $item) {
                ProductVariant::where('id', $item->product_variant_id)->orWhere('product_id', $item->product_id)->increment('stock', $item->qty);
            }
        }

        return redirect()->back()->withSuccessMessage('Order status updated successfully ✅');
    }


    /**
     * 🚚 Track Order
     */
    public function track(Order $order)
    {
        return view('admin.order.track', compact('order'));
    }

    /**
     * 👁 Order Details
     */
    public function show(Order $order)
    {
        $order->load('items.product', 'items.productVariant');

        return view('admin.order.show', compact('order'));
    }

    /**
     * 🧾 Invoice View
     */
    public function invoice(Order $order)
    {
        $order->load('items.product', 'items.productVariant');

        // PDF needed later
        // $pdf = Pdf::loadView('admin.order.invoice', compact('order'));
        // return $pdf->download('invoice-' . $order->order_number . '.pdf');

        return view('admin.order.invoice', compact('order'));
    }

    /**
     * ✅ Order Success (Admin)
     */
    public function success()
    {
        $menus = $this->adminService->getMenu();

        $order = Order::with('items.product')
            ->latest()
            ->first();

        if (!$order) {
            return redirect('/');
        }

        return view('admin.order.success', compact('order', 'menus'))
            ->with('success', 'Order placed successfully');
    }
}
