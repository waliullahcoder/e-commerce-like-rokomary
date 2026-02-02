<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>{{ $settings->title }}</title>
    <link rel="shortcut icon"
        href="{{ asset(file_exists($settings->favicon) ? $settings->favicon : 'frontend/images/logo/favicon.png') }}"
        type="image/x-icon">
    @include('layouts.frontend.partial.styles')
    
   
</head>

<body>
    @include('layouts.frontend.partial.header')
    @yield('content')
    <script type="text/javascript" src="{{ asset('frontend/js/sweetalert2@11.js') }}"></script>
    @include('layouts.frontend.partial.alert')
    @include('layouts.frontend.partial.footer')
    @include('layouts.frontend.partial.scripts')
    {{-- <script type="text/javascript" src="{{ asset('frontend/js/jquery-3.6.0.min.js') }}"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> --}}
<script>
$(document).ready(function () {

    $('.add-to-cart').click(function (e) {
        e.preventDefault();

        let button = $(this);   // ✅ আগে declare

        let productId = button.data('id');
        let variantId = button.data('variant_id');
        let image = button.closest('.product-card').find('.product-img');
        let cart = $('.cart-icon');
  if (!image.length) {
            console.warn('Product image not found for flying animation');
            return;
        }
        let flyingImg = image.clone()
            .css({
                position: 'absolute',
                zIndex: 999,
                width: image.width(),
                top: image.offset().top,
                left: image.offset().left
            })
            .appendTo('body');

        flyingImg.animate({
            top: cart.offset().top,
            left: cart.offset().left,
            width: 20,
            opacity: 0.5
        }, 700, function () {
            flyingImg.remove();
        });

        $.post("{{ route('cart.add') }}", {
            _token: "{{ csrf_token() }}",
            product_id: productId,
            variant_id: variantId
        }, function (res) {
            $('.cart-count').text(res.count);
        });

    });

});
</script>
<script>
$(document).ready(function () {

    function calculateCart() {
        let subtotal = 0;

        $('.cart-item').each(function () {
            let price = parseFloat($(this).data('price'));
            let qty   = parseInt($(this).find('.qty').val());
            subtotal += price * qty;
        });

        let discount = subtotal * 0.10;
        let tax      = subtotal * 0.05;
        let total    = subtotal - discount + tax;

        $('#subtotal').text('৳ ' + subtotal.toFixed(2));
        $('#discount').text('- ৳ ' + discount.toFixed(2));
        $('#tax').text('৳ ' + tax.toFixed(2));
        $('#total').text('৳ ' + total.toFixed(2));
    }

    calculateCart();

    $(document).on('click', '.qty-plus, .qty-minus', function () {

        let card = $(this).closest('.cart-item');
        let qtyInput = card.find('.qty');
        let qty = parseInt(qtyInput.val());
        let price = parseFloat(card.data('price'));

        if ($(this).hasClass('qty-plus')) {
            qty++;
        } else {
            qty = Math.max(1, qty - 1);
        }

        qtyInput.val(qty);

        let itemTotal = price * qty;
        card.find('.item-subtotal').text('৳ ' + itemTotal.toFixed(2));

        $.ajax({
            url: "{{ route('cart.update') }}",
            method: "POST",
            data: {
                _token: "{{ csrf_token() }}",
                id: card.data('id'),
                qty: qty
            }
        });

        calculateCart();
    });

});
</script>
</body>

</html>
