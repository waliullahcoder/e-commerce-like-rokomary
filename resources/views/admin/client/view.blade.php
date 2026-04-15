@extends('layouts.admin.app')

@section('content')
<div class="container-fluid">

    <!-- HEADER CARD -->
    <div class="card shadow-sm border-0 mb-3">
        <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
            <h6 class="mb-0 text-uppercase">
                {{ $title ?? 'Client Statement' }}
            </h6>

            @php
                $route = \Request::route()->getName();
                $indexRoute = str_replace('show', 'index', $route);
            @endphp

            <a href="{{ route($indexRoute) }}" class="btn btn-light btn-sm">
                ← Go Back
            </a>
        </div>

        <div class="card-body">
            <div class="row g-3">

                <!-- LEFT INFO -->
                <div class="col-md-6">
                    <div class="p-3 border rounded bg-light h-100">

                        <div class="mb-2">
                            <strong>Client Name</strong><br>
                            <strong class="text-primary">{{$client->name}}</strong>
                        </div>

                        <div class="mb-2">
                            <strong>Mobile No.</strong><br>
                            <span>{{$client->phone}}</span>
                        </div>

                        <div class="mb-2">
                            <strong>Address</strong><br>
                            <span>{{$client->address}}</span>
                        </div>

                    </div>
                </div>

                <!-- RIGHT INFO -->
                <div class="col-md-6">
                    <div class="p-3 border rounded bg-light h-100">

                        <div class="mb-2">
                            <strong>Sales (Total)</strong><br>
                           <span>Tk.{{number_format($sales->sum('net_amount'), 2)}}</span>
                        </div>

                        <div class="mb-2">
                            <strong>Paid (Total)</strong><br>
                            <span class="text-dark">
                             Tk.{{number_format($total_paid, 2)}}
                            </span>
                        </div>
                        <div class="mb-2">
                            <strong>Due (Total)</strong><br>
                            <span class="text-dark">
                               Tk.{{number_format($due, 2)}}
                            </span>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- SUMMARY CARD -->
    {{-- <div class="card shadow-sm border-0 mb-3">
        <div class="card-body d-flex justify-content-between align-items-center">

            <div>
                <h6 class="mb-0 text-muted">Total Debit Amount</h6>
                <small class="text-muted">All debit entries combined</small>
            </div>

            <h4 class="mb-0 text-danger fw-bold">
                {{ number_format($sales->sum('net_amount'), 2) }}
            </h4>

        </div>
    </div> --}}

    <!-- TABLE CARD -->
    <div class="card shadow-sm border-0">

        <div class="card-header bg-dark text-white">
            <h6 class="mb-0 text-uppercase">Sales History</h6>
        </div>

        <div class="card-body p-0">

            <div class="table-responsive">
                <table class="table table-hover table-striped mb-0">

                    <thead class="table-primary">
                        <tr>
                            <th class="text-center" width="50">#</th>
                            <th>Invoice</th>
                            <th>Date</th>
                            <th>Paid(BDT)</th>
                            <th class="text-end" width="180">Net Amount(BDT)</th>
                        </tr>
                    </thead>

                    <tbody>
                        @forelse($sales as $item)
                            <tr>
                                <td class="text-center">{{ $loop->iteration }}</td>

                                <td>
                                    <strong>{{ $item->invoice }}</strong>
                                </td>
                                <td>
                                    <small class="text-muted">{{ $item->date }}</small>
                                </td>

                                <td>{{ number_format($item->paid, 2) }}</td>

                                <td class="text-end text-danger fw-semibold">
                                    {{ number_format($item->net_amount, 2) }}
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="5" class="text-center text-muted py-4">
                                    No Data Found
                                </td>
                            </tr>
                        @endforelse
                    </tbody>

                    <tfoot class="table-dark">
                        <tr>
                            <th colspan="4" class="text-end">Grand Total</th>
                            <th class="text-end">
                                {{ number_format($sales->sum('net_amount'), 2) }}
                            </th>
                        </tr>
                    </tfoot>

                </table>
            </div>

        </div>
    </div>

</div>
@endsection