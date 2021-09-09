(function ($) {
    "use strict";
    $(window).on('load', function (event) {
        $('.preloader').delay(500).fadeOut(500);
    });

    $(".navbar-toggler").on('click', function () {
        $(this).toggleClass('active');
    });
    $(".navbar-nav a").on('click', function () {
        $(".navbar-toggler").removeClass('active');
    });
    $(".navbar-nav a").on('click', function () {
        $(".navbar-collapse").removeClass("show");
    });
    $(window).on('scroll', function (event) {
        var scroll = $(window).scrollTop();
        if (scroll < 10) {
            $(".navigation").removeClass("sticky");
        } else {
            $(".navigation").addClass("sticky");
        }
    });
    var scrollLink = $('.page-scroll');
    $(window).scroll(function () {
        var scrollbarLocation = $(this).scrollTop();
        scrollLink.each(function () {
            var sectionOffset = $(this.hash).offset().top - 73;
            if (sectionOffset <= scrollbarLocation) {
                $(this).parent().addClass('active');
                $(this).parent().siblings().removeClass('active');
            }
        });
    });
    $(window).on('scroll', function (event) {
        if ($(this).scrollTop() > 600) {
            $('.back-to-top').fadeIn(200)
        } else {
            $('.back-to-top').fadeOut(200)
        }
    });
    $('.scroll-to').on('click', function(e) {
        e.preventDefault();

        var href = $(this).attr('href');
        scrollTo(href);
    });
    
    $('.register').on('click', function(e) {
        e.preventDefault();
        var modalTarget = $(this).attr('data-parent'),
            find = document.querySelector(modalTarget);
        if (find) {
            $(modalTarget).modal('hide');
            var href = $(this).attr('href');
            scrollTo(href);
        }
    })
    $('.back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html, body').animate({
            scrollTop: 0,
        }, 800);
    });

    function scrollTo(href) {
        var element = document.querySelector(href);
        if (element) {
            $('html, body').animate({
                scrollTop: element.offsetTop
            }, 'slow');
        }
    }
}(jQuery));