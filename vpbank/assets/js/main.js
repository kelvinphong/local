(function ($) {
    "use strict";
    $(window).on('load', function (event) {
        $('.preloader').delay(500).fadeOut(500);
        styleForm();
    });
    $(window).on('resize', function (e) {
        styleForm();
    })
    function styleForm() {
        const fieldRow = document.querySelectorAll(".field-row");
        if (fieldRow.length > 0) {
            $.each(fieldRow, function (index, ele) {
                let input = $(ele).find('.form-input'),
                    label = $(ele).find('label:not(".error")');
                if (label.length > 0) {
                    input.css("padding-left", $(label).width() + 25 + "px");
                }
            })
        }
    }
}(jQuery));
$(document).ready(function (e) {
    var wow = new WOW({
        boxClass: "wow",
        animateClass: "animated",
        offset: 0,
        mobile: true,
        live: true
    });
    wow.init();
    const  promotionsTabs = document.querySelector("#promotionsTabs"),
        registerForm = document.querySelector(".register-form");
    $(window).on('scroll', function (event) {
        if ($(this).scrollTop() > 600) {
            $('.back-to-top').fadeIn(200)
        } else {
            $('.back-to-top').fadeOut(200)
        }
    });
    $('.scroll-to').on('click', function (e) {
        e.preventDefault();

        var href = $(this).attr('href');
        scrollTo(href);
    });
    $('#promotionsTabs a').on('click', function (e) {
        e.preventDefault();
        let items = $(promotionsTabs).find("a");
        if (items.length > 0) {
          items.parent().removeClass('active').end().filter("[href*='" + $(this).attr('href') + "']").parent()
            .addClass('active')
        }

        $(this).tab('show')
    })
    $('.register').on('click', function (e) {
        e.preventDefault();
        var modalTarget = $(this).attr('data-parent'),
            find = document.querySelector(modalTarget);
        if (find) {
            $(modalTarget).modal('hide');
        }

        var href = $(this).attr('href'),
            product = $(this).attr('data-target');
        var checked = $("#myForm input[type=checkbox]").filter('[value=' + product + ']');
        if (checked.length > 0) {
            checked.prop('checked', true);
        }
        scrollTo(href);
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
    $("#myForm").validate({
        rules: {
            "businessName": {
                required: true
            },
            "tax": {
                required: true
            },
            "phone": {
                required: true,
                number: true,
                digits: true,
                minlength: 10,
                maxlength: 20
            },
            "email": {
                required: true,
                email: true
            },
            "name": {
                required: true,
                maxlength: 256
            },
            "product[]": {
                required: true
            }
        },
        messages: {
            "businessName": {
                required: "Không được bỏ trống trường này"
            },
            "tax": {
                required: "Không được bỏ trống trường này",
            },
            "phone": {
                required: "Không được bỏ trống trường này",
                number: "Vui lòng nhập kiểu số",
                digits: "Vui lòng nhập kiểu số",
                minlength: "Hãy nhập ít nhất 10 con số",
                maxlength: "Hãy nhập tố đa 20 con số"
            },
            "email": {
                required: "Không được bỏ trống trường này",
                email: "Email không đúng định dạng"
            },
            "name": {
                required: "Không được bỏ trống trường này",
                maxlength: "Hãy nhập tố đa 256 ký tự"
            },
            "product[]": {
                required: "Vui lòng chọn ít nhất 1 giá trị",
            }
        },
        submitHandler: function (form, e) {
            return false;
            var formData = {},
                registerForm = document.querySelector(".register-form"),
                fields = $(form).find(".form-input"),
                statusError = document.querySelector('.status-error');

            statusError && (statusError.remove());
            $.each(fields, function (index, field) {
                formData = Object.assign(formData, {
                    [$(field).attr("name")]: field.value
                })
            })

            var checked = $("#myForm input[type=checkbox]:checked");
            if (checked.length > 0) {
                var product = "";
                $.each(checked, function(index, ele) {
                    product += ele.value + (index < checked.length - 1 ? ', ' : '');
                });
                formData = Object.assign(formData, {"product": product})
            }

            var request = $.ajax({
                type: "POST",
                url: "",
                data: formData,
                dataType: "json",
                encode: true
            });

            request.done(function (data) {
                registerForm.classList.remove("loading");
                registerForm.classList.add('success');

                let formEle = $(registerForm).find('form');
                $(formEle).prepend('<div class="status-error">Xảy ra lỗi lưu thông tin, vui lòng thử lại !</div>')
                $(registerForm).append('<div class="send-success" style="height: ' + $(formEle).innerHeight() + 'px"><div style="text-align:center;padding: .5rem">' +
                    '<div style="margin-bottom: 1rem"><img src="./assets/img/vngcloudxvpbank-checked-icon.png"></div>' +
                    '<h4 class="f-600 primary-color">Thông tin được gửi thành công</h4>' +
                    '<p>VP Bank đã nhận được thông tin của doanh nghiệp và liên hệ trong thời gian sớm nhất</p>' +
                    '<a class="btn main-btn" style="color: #fff" id="send-another" hef="#">Gửi yêu cầu khác</a></div></div>');
            });

            request.fail(function (jqXHR, textStatus) {
                registerForm.classList.remove("loading");
                let formEle = $(registerForm).find('form');
                $(formEle).prepend('<div class="status-error">Xảy ra lỗi lưu thông tin, vui lòng thử lại !</div>');
            });

            registerForm.classList.add("loading");
            return false;
        }
    });
    $(".register-form").on('click', "#send-another", function (e) {
        e.preventDefault();

        const sendSuccess = document.querySelector(".send-success");
        if (sendSuccess) {
            $('#myForm')[0].reset();
            $(sendSuccess).remove();
            registerForm.classList.remove('success');
        }
    })
});