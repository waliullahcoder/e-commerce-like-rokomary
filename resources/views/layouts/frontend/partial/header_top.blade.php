<div class="header-top d-md-block d-none">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <div class="text-sm">বুকস অ্যান্ড বুকসে স্বাগতম!</div>
            <div class="top-header-links">
                @foreach ($menus['top_menus'] as $menu)
                <a class="{{ request()->routeIs('info.page') && request()->route('id') == $menu->id ? 'clicked' : '' }}" href="{{ route('info.page', $menu->id) }}">
                    <span>{{ $menu->name }}</span> </a>
                <div class="devider"></div>
                @endforeach
            </div>
        </div>
    </div>
</div>