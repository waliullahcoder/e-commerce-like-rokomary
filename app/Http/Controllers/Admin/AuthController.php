<?php

namespace App\Http\Controllers\Admin;

use App\HelperClass;
use App\Models\User;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;
class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (Auth::check()) {
            return redirect()->route('admin.dashboard');
        }

        return view('admin.auth.login');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function login(Request $request)
    {
        if ($request->isMethod('GET')) {
            return redirect()->route('admin.login.index');
        }

        $request->validate([
            'user_name' => 'required|string',
            'password' => 'required|string',
        ]);

        $user = User::where('user_name', $request->user_name)->where('status', 1)->first();
        if (!$user) {
            return redirect()->back()->withErrors('User does not exist or is inactive!')->withInput();
        }

        if (Auth::attempt($request->only('user_name', 'password'), $request->filled('remember'))) {
            $intendedUrl = Session::pull('url.intended', route('admin.dashboard'));
            return redirect()->intended($intendedUrl)->with('success', 'Logged in successfully!');
        }

        return redirect()->back()->withErrors('Invalid username or password!')->withInput();
    }

    public function dashboard(Request $request)
    {

        $today = Carbon::today();
        $startOfMonth = $today->copy()->startOfMonth();
        $endOfMonth = $today->copy()->endOfMonth();

        // Total & Daily Expenses
        $totalExpense = \App\Models\Expense::sum('amount');
        $dailyExpense = \App\Models\Expense::whereDate('created_at', $today)->sum('amount');

        // Total & Daily Sales
        $totalSales = \App\Models\Sales::sum('net_amount');
        $dailySales = \App\Models\Sales::whereDate('created_at', $today)->sum('net_amount');

        // Total & Daily Orders
        $totalOrders = \App\Models\Order::count();
        $dailyOrders = \App\Models\Order::whereDate('created_at', $today)->count();

        // Monthly Sales & Expense for charts
        $months = [];
        $monthlySales = [];
        $monthlyExpense = [];

        for ($i = 0; $i < 6; $i++) {
            $monthStart = $today->copy()->subMonths(5 - $i)->startOfMonth();
            $monthEnd = $monthStart->copy()->endOfMonth();

            $months[] = $monthStart->format('M');

            $monthlySales[] = \App\Models\Sales::whereBetween('created_at', [$monthStart, $monthEnd])->sum('net_amount');
            $monthlyExpense[] = \App\Models\Expense::whereBetween('created_at', [$monthStart, $monthEnd])->sum('amount');
        }

        $dashboardData = [
            'totalExpense' => $totalExpense,
            'dailyExpense' => $dailyExpense,
            'totalSales' => $totalSales,
            'dailySales' => $dailySales,
            'totalOrders' => $totalOrders,
            'dailyOrders' => $dailyOrders,
            'monthlySales' => $monthlySales,
            'monthlyExpense' => $monthlyExpense,
            'months' => $months,
        ];

        return view('admin.auth.dashbaord', compact('dashboardData'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit()
    {
        return view('admin.profile.index');
    }

    public function changeImages(Request $request)
    {
        $user = Auth::user();

        $user->update([
            'cover_image' => $request->hasFile('cover_image') ? HelperClass::saveImage($request->cover_image, 1200, 'admin/avatar', $user->cover_image) : $user->cover_image,
            'image' => $request->hasFile('profile_image') ? HelperClass::saveImage($request->profile_image, 300, 'admin/avatar', $user->image) : $user->image,
        ]);

        return back()->withSuccessMessage('Images updated successfully!');
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $user = Auth::user();

        $request->validate([
            'email' => 'required|email|unique:users,email,' . $user->id,
            'name' => 'required|string|max:255',
            'phone' => 'nullable|string|max:20',
            'address' => 'nullable|string|max:255',
        ]);

        $user->update($request->only(['name', 'email', 'phone', 'address']));

        return back()->withSuccessMessage('Information updated successfully!');
    }

    public function changePassword(Request $request)
    {
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|string|min:8|confirmed',
        ]);

        $user = Auth::user();

        if (!Hash::check($request->old_password, $user->password)) {
            return back()->withErrors('Old password does not match!');
        }

        $user->update(['password' => bcrypt($request->new_password)]);

        return back()->withSuccessMessage('Password updated successfully!');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('admin.login.index');
    }

    public function sidebar()
    {
        $key = 'session-sidebar';

        if (!Session::has($key)) {
            Session::put($key, 'session-sidebar');
        } else {
            Session::forget($key);
        }

        return response()->json(['status' => 'toggled']);
    }
}
