<div class="header-middle">
        <div class="container">
            <div class="header-middle-wrapper">
                <div class="logo-area d-flex align-items-center">
                    <!-- MOBILE HEADER START -->
                    <div class="d-lg-none">
                       <button id="mobileMenuBtn" class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                        <!-- MOBILE HEADER END -->
                    </div>
                    <a href="{{ Route('home') }}">
                        <img src="{{ asset(file_exists($settings->logo) ? $settings->logo : 'frontend/images/logo/logo.jpg') }}"
                            height="50" alt="{{ $settings->app_name }}">
                    </a>
                </div>
                <div class="search-area d-lg-block d-none">
                    <form action="#" method="GET">
                        <div class="search-wrapper">
                            <input type="search" class="search-input form-control" name="query"
                                placeholder="বইয়ের নাম ও লেখক দিয়ে অনুসন্ধান করুন" required>
                            <button type="submit" class="btn search-btn"><i class="fas fa-search"></i></button>
                        </div>
                    </form>
                </div>
                <div class="action-area">
                    <div class="header-links">
                        <a href="{{ route('cart.index') }}" class="cart-icon">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span class="cart-count">{{ count(session('cart', [])) }}</span>
                        </a>
                        @if (Auth::check())
                        <a class="header-link" href="{{ Auth::user()->role_status == 0 ? route('frontend.user.dashboard') : route('admin.dashboard') }}">
                           <strong> {{ Auth::user()->name }} </strong>
                        </a>
                        @else
                        <a class="header-link" href="{{route('auth.signinPage') }}">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                fill="none">
                                <g clip-path="url(#clip0_3111_32739)">
                                    <path
                                        d="M12 12C14.7614 12 17 9.76142 17 7C17 4.23858 14.7614 2 12 2C9.23858 2 7 4.23858 7 7C7 9.76142 9.23858 12 12 12Z"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round"></path>
                                    <path
                                        d="M20.5901 22C20.5901 18.13 16.7402 15 12.0002 15C7.26015 15 3.41016 18.13 3.41016 22"
                                        stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                                        stroke-linejoin="round"></path>
                                </g>
                                <defs>
                                    <clipPath id="clip0_3111_32739">
                                        <rect width="24" height="24" fill="white"></rect>
                                    </clipPath>
                                </defs>
                            </svg>
                         
                            <span class="d-sm-inline-block d-none">
                                Sign in
                            </span>
                        </a>
                        @endif
                </div>
            </div>
        </div>
    </div>

    <!-- MOBILE MENU START -->
    <div class="mobile-menu" id="mobileMenu">
        <ul>
            <li><a href="#">হোম</a></li>
            <li><a href="#">জেনারেল বই</a></li>

            <li class="has-sub">
                <a href="#">একাডেমিক ▾</a>
                <ul class="sub-menu">
                    <li><a href="#">স্কুল</a></li>
                    <li><a href="#">কলেজ</a></li>
                </ul>
            </li>

            <li><a href="#">আরবি বই</a></li>
            <li><a href="#">লেখক</a></li>
            <li><a href="#">প্রকাশক</a></li>
        </ul>
    </div>
</div>


<script>
const mobileBtn = document.getElementById('mobileMenuBtn');
const mobileMenu = document.getElementById('mobileMenu');

mobileBtn.addEventListener('click', () => {
    mobileMenu.style.display =
        mobileMenu.style.display === 'block' ? 'none' : 'block';
});

/* accordion */
document.querySelectorAll('.has-sub > a').forEach(item => {
    item.addEventListener('click', e => {
        e.preventDefault();
        const sub = item.nextElementSibling;
        sub.style.display = sub.style.display === 'block' ? 'none' : 'block';
    });
});
</script>
<!-- MOBILE MENU END -->