@extends('layouts.admin.app')

@section('content')

<style>
.info-card { border-radius: 12px; transition: transform 0.2s; }
.info-card:hover { transform: translateY(-5px); }
.card-body { display: flex; justify-content: space-between; align-items: center; }
.card-content p { font-size: 0.9rem; color: #666; }
.card-count { font-size: 1.5rem; font-weight: 600; }
.card-icon { width: 50px; height: 50px; font-size: 24px; }
.card-header { font-weight: 600; font-size: 1rem; }
</style>

<div class="container-fluid">


    <div class="row">
    <!-- Left Side -->
    <div class="col-lg-6">

        <div class="row g-3">

             <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="{{ route('admin.expense.index') }}">
                <div class="card-body">
                    <div>
                        <p>Total Expense</p>
                        <h3 class="card-count">৳{{ number_format($dashboardData['totalExpense'] ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-danger text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">account_balance_wallet</span>
                    </div>
                </div>
                </a>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="{{ route('admin.sales.index') }}">
                <div class="card-body">
                    <div>
                        <p>Total Sales</p>
                        <h3 class="card-count">৳{{ number_format($dashboardData['totalSales'] ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-success text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">sell</span>
                    </div>
                </div>
                </a>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="{{ route('admin.orders.index') }}">
                <div class="card-body">
                    <div>
                        <p>Total Orders</p>
                        <h3 class="card-count">{{ number_format($dashboardData['totalOrders'] ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-info text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">shopping_cart</span>
                    </div>
                </div>
                </a>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="{{ route('admin.expense.index',['daily'=>1]) }}">
                <div class="card-body">
                    <div>
                        <p>Daily Expense</p>
                        <h3 class="card-count">৳{{ number_format($dashboardData['dailyExpense'] ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-warning text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">payments</span>
                    </div>
                </div>
                </a>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="{{ route('admin.sales.index',['daily'=>1]) }}">
                <div class="card-body">
                    <div>
                        <p>Daily Sales</p>
                        <h3 class="card-count">৳{{ number_format($dashboardData['dailySales'] ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-primary text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">currency_exchange</span>
                    </div>
                </div>
                </a>
            </div>
        </div>

        <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="{{ route('admin.orders.index',['daily'=>1]) }}">
                <div class="card-body">
                    <div>
                        <p>Daily Orders</p>
                        <h3 class="card-count">{{ number_format($dashboardData['dailyOrders'] ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-secondary text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">receipt_long</span>
                    </div>
                </div>
                </a>
            </div>
        </div>
            @php
            $total_profit = $total_sales - $total_purchases - $total_expense;
            @endphp
        <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="#">
                <div class="card-body">
                    <div>
                        <p>Monthly Sales</p>
                        <h3 class="card-count">৳{{ number_format($total_sales ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-primary text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">currency_exchange</span>
                    </div>
                </div>
                </a>
            </div>
        </div>
         <div class="col-sm-6">
            <div class="card info-card shadow-sm">
                <a href="#">
                <div class="card-body">
                    <div>
                        <p>Monthly Expense</p>
                        <h3 class="card-count">৳{{ number_format($total_expense ?? 0) }}</h3>
                    </div>
                    <div class="card-icon bg-warning text-white rounded-circle d-flex align-items-center justify-content-center">
                        <span class="material-symbols-outlined">payments</span>
                    </div>
                </div>
                </a>
            </div>
        </div>

        </div>

    </div>

    <!-- Right Side -->
    <div class="col-lg-6">
        <div class="card">
                                <div class="card-header pe-2">
                                    <div class="d-flex justify-content-between align-items-center gap-3">
                                        <div class="flex-grow-1">
                                            <h5 class="h6 mb-0 text-uppercase">Books & Books Summary</h5>
                                        </div>
                                        <div class="flex-shrink-0" style="width: 200px;">
                                            <form action="{{ route('admin.dashboard') }}" method="GET"
                                                class="d-flex gap-2 align-items-center">

                                                <select name="year" class="form-select form-select-sm" onchange="this.form.submit()">
                                                    @for($y=2024; $y<=2030; $y++)
                                                        <option value="{{ $y }}" {{ request('year', date('Y')) == $y ? 'selected' : '' }}>
                                                            {{ $y }}
                                                        </option>
                                                    @endfor
                                                </select>

                                                <select name="month" class="form-select form-select-sm" onchange="this.form.submit()">
                                                    @for ($m = 1; $m <= 12; $m++)
                                                        @php $monthName = date('F', mktime(0,0,0,$m,1)); @endphp
                                                        <option value="{{ $monthName }}"
                                                            {{ request('month', date('F')) == $monthName ? 'selected' : '' }}>
                                                            {{ $monthName }}
                                                        </option>
                                                    @endfor
                                                </select>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body p-2">
                                    <table class="table table-bordered mb-0 table-sm">
                                        <thead>
                                            <tr class="text-white bg-primary">
                                                <th>Name</th>
                                                <td></td>
                                                <th class="text-end">AMOUNT</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <tr class="bg-light">
                                                <th>Monthly Total Orders</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($total_monthly_orders) }}</td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Monthly Total Delivered </th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($total_monthly_delivered_orders) }}
                                                </td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Avarage Order Value </th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($total_monthly_order_amount) }}</td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Total Sales</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($total_sales) }}</td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Total Purchase</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($total_purchases) }}</td>
                                            </tr>
                                            
                                            
                                            <tr class="bg-light">
                                                <th>Total Expense</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($total_expense) }}</td>
                                            </tr>
                                            
                                            <tr class="bg-light">
                                                <th>Moderator Commission</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">0</td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Profit Distribution</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($investorProfit) }}</td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Total Share</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($totalShareQty) }}</td>
                                            </tr>
                                            <tr class="bg-light">
                                                <th>Per Share Profit</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">{{ number_format($perShareProfit) }}</td>
                                            </tr>
                                        </tbody>
                                        <tfoot class="bg-primary text-white">
                                            <tr>
                                                <th>Monthly Net Profit</th>
                                                <td class="text-center" width="30">=&gt;</td>
                                                <td class="text-end">
                                                    {{ $total_profit >= 0 ? number_format($total_profit) : '(' . number_format(abs($total_profit)) . ')' }}
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>

    </div>
</div>
    
    <!-- Charts -->
    <div class="row" style="margin-top:10px;">
        <div class="col-lg-6">
            <div class="card shadow-sm">
                <div class="card-header">Monthly Sales</div>
                <div class="card-body">
                    <canvas id="salesBarChart" height="200"></canvas>
                </div>
            </div>
        </div>

        <div class="col-lg-6">
            <div class="card shadow-sm">
                <div class="card-header">Monthly Expense</div>
                <div class="card-body">
                    <canvas id="expenseLineChart" height="200"></canvas>
                </div>
            </div>
        </div>

    </div>



</div>



<script type="text/javascript" src="{{ asset('backend/js/chart.js') }}"></script>
<script>
const months = @json($dashboardData['months'] ?? []);
const monthlySales = @json($dashboardData['monthlySales'] ?? []);
const monthlyExpense = @json($dashboardData['monthlyExpense'] ?? []);

// Sales Bar Chart
const salesCtx = document.getElementById('salesBarChart').getContext('2d');
new Chart(salesCtx, {
    type: 'bar',
    data: {
        labels: months,
        datasets: [{
            label: 'Monthly Sales',
            data: monthlySales,
            backgroundColor: '#4CAF50'
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: { display: false },
            title: { display: true, text: 'Monthly Sales' }
        },
        scales: { y: { beginAtZero: true } }
    }
});

// Expense Line Chart
const expenseCtx = document.getElementById('expenseLineChart').getContext('2d');
new Chart(expenseCtx, {
    type: 'line',
    data: {
        labels: months,
        datasets: [{
            label: 'Monthly Expense',
            data: monthlyExpense,
            borderColor: '#F44336',
            backgroundColor: 'rgba(244, 67, 54, 0.2)',
            tension: 0.4,
            fill: true,
            pointRadius: 5,
            pointBackgroundColor: '#F44336'
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: { display: false },
            title: { display: true, text: 'Monthly Expense' }
        },
        scales: { y: { beginAtZero: true } }
    }
});
</script>
@endsection