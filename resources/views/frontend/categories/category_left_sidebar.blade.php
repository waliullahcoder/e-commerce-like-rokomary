 <div class="col-lg-3 d-none d-lg-block">
                <div class="filter-box">
                    <h5 class="filter-title">ফিল্টার</h5>
                    <!-- SUBJECT -->
                    <form id="filter-form">
                    <div class="filter-group">
                        <h6>বিষয়</h6>
                        <ul>
                            @foreach($subcategories as $sub)
                                <li>
                                    <label>
                                        <input type="checkbox" name="category_id[]" value="{{ $sub->id }}">
                                        {{ $sub->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    </form>
                    <!-- AUTHOR -->
                    <div class="filter-group">
                        <h6>লেখক</h6>
                        <ul>
                            @foreach($authors ?? [] as $author)
                                <li>
                                    <label>
                                        <input type="checkbox">
                                        {{ $author->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="filter-group">
                        <h6>পাবলিকেশন</h6>
                        <ul>
                            @foreach($publications ?? [] as $pub)
                                <li>
                                    <label>
                                        <input type="checkbox">
                                        {{ $pub->name }}
                                    </label>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="filter-group">
                        <h6>দাম অনুযায়ী</h6>

                        <!-- SORT -->
                        <ul class="mb-3">
                            <li>
                                <label>
                                    <input type="radio" name="price_sort"
                                        value="low_high"
                                        onchange="this.form.submit()"
                                        {{ request('price_sort') == 'low_high' ? 'checked' : '' }}>
                                    কম থেকে বেশি
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="price_sort"
                                        value="high_low"
                                        onchange="this.form.submit()"
                                        {{ request('price_sort') == 'high_low' ? 'checked' : '' }}>
                                    বেশি থেকে কম
                                </label>
                            </li>
                        </ul>

                        <!-- RANGE -->
                        <ul>
                            <li>
                                <label>
                                    <input type="radio" name="price_range"
                                        value="0-200"
                                        onchange="this.form.submit()"
                                        {{ request('price_range') == '0-200' ? 'checked' : '' }}>
                                    ০ – ২০০ ৳
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="price_range"
                                        value="201-500"
                                        onchange="this.form.submit()"
                                        {{ request('price_range') == '201-500' ? 'checked' : '' }}>
                                    ২০১ – ৫০০ ৳
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="price_range"
                                        value="500+"
                                        onchange="this.form.submit()"
                                        {{ request('price_range') == '500+' ? 'checked' : '' }}>
                                    ৫০০+ ৳
                                </label>
                            </li>
                        </ul>
                    </div>

                    <!-- PRICE -->
                    <div class="filter-group">
                        <h6>দাম</h6>
                        <ul>
                            <li><label><input type="checkbox"> ০ – ২০০ ৳</label></li>
                            <li><label><input type="checkbox"> ২০১ – ৫০০ ৳</label></li>
                            <li><label><input type="checkbox"> ৫০০+ ৳</label></li>
                        </ul>
                    </div>
                </div>
            </div>