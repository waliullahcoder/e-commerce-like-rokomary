@extends('layouts.admin.app')

@section('content')
    <div class="row g-3 info-cards">
        <div class="col-lg-3 col-sm-6">
            <a href="#">
                <div class="card info-card">
                    <div class="card-body">
                        <div class="card-content">
                            <p class="card-text">Total Purchase</p>
                            <h3 class="card-count">{{ number_format(0) }}</h3>
                        </div>
                        <div class="card-icon">
                            <span class="material-symbols-outlined"> web_stories </span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-sm-6">
            <a href="#">
                <div class="card info-card">
                    <div class="card-body">
                        <div class="card-content">
                            <p class="card-text">Total Sales</p>
                            <h3 class="card-count">{{ number_format(0) }}</h3>
                        </div>
                        <div class="card-icon">
                            <span class="material-symbols-outlined"> web_stories </span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-sm-6">
            <a href="#">
                <div class="card info-card">
                    <div class="card-body">
                        <div class="card-content">
                            <p class="card-text">Stock Value</p>
                            <h3 class="card-count">{{ number_format(0) }}</h3>
                        </div>
                        <div class="card-icon">
                            <span class="material-symbols-outlined"> web_stories </span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-lg-3 col-sm-6">
            <a href="#">
                <div class="card info-card">
                    <div class="card-body">
                        <div class="card-content">
                            <p class="card-text">Supplier Due</p>
                            <h3 class="card-count">{{ number_format(0) }}</h3>
                        </div>
                        <div class="card-icon">
                            <span class="material-symbols-outlined"> web_stories </span>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
@endsection
