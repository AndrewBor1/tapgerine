'use strict';
 $(window).load(function() {   
    
    /* --------- */
    /* FUNCTIONS */
    /* --------- */

    // SHOW/HIDE TOP MENU ON DIFFERENT RESOLUTIONS
    function showHideMenu() {
        var $mobileMenu = $('.menu-col', '#SHeader .menu-row');
        if ($(window).width() > 767) {
            if ($mobileMenu.css("display") === "none") {
                $mobileMenu.show();
            }
        } else {
            if ($mobileMenu.css("display") !== "none") {
                $mobileMenu.hide();
            }
        }
    }
    
    // START ACHIEVEMENTS SPIN
    function spinAchievements() {
        var $achievements = $('.border', '#SAbout .achievements-row');
        if (($(window).scrollTop() > 550) && ($(window).scrollTop() < 1400)) {
            for (var i = 0; i < $achievements.length; i++) {
                if (!($($achievements[i]).hasClass("spin"))) {
                    $($achievements[i]).addClass("spin");
                }
            }
        }
        else {
            for (var i = 0; i < $achievements.length; i++) {
                if ($($achievements[i]).hasClass("spin")) {
                    $($achievements[i]).removeClass("spin");
                }
            }
        }
    }
    
    /* --------------- */
    /* CLASS NAMESPACE */
    /* --------------- */
    var classNamespace = {
        
        // OPEN CLOSE MOBILE MENU
        openCloseMenu: function() {
            var $mobileMenu = $('.menu-col', '#SHeader .menu-row');
            if ($mobileMenu.css("display") === "none") {
                $mobileMenu.slideDown();
            } 
            else {
                $mobileMenu.slideUp();
            }
        },
        
        // ANIMATE PRODUCT ICON
        animateProduct: function() {
            var $productsIco = $('.icon', $(this));
            if (!$productsIco.is('.animated', '.infinite', '.pulse')) {
                $productsIco.addClass("animated infinite pulse");
            }
            else {
                $productsIco.removeClass("animated infinite pulse");
            }
        },
        
        // CLOSE DOWNLOAD FORM
        closeDownloadForm: function() {
            console.log('close');
            if (!($('#SPopUpForm').css("display") === "none")) {
                $('#SPopUpForm').fadeOut('slow');
            }
        },
        
        // SEND DOWNLOAD FORM DATA TO MAILER
        sendDownloadForm: function(event) {
            event.preventDefault();
            var $form = $(this),
                data = $form.serialize();
            $.ajax({ 
                type: 'POST', 
                url: '/wp-content/themes/tapgerine_test/mailer.php', 
                data: data, 
                beforeSend: function(data) { 
                    $form.find('input[type="submit"]').attr("disabled", "disabled"); 
                },
                success: function(data) {
                    if (data === "1") {
                        $('#SuccessMessage').height($('.content', '#SPopUpForm').outerHeight());
                        $('#SuccessMessage').fadeIn('slow'); 
                        $('#SuccessMessage').css("display", "flex");
                    } 
                    else {
                        $('#ErrorMessage').height($('.content', '#SPopUpForm').outerHeight());
                        $('#ErrorMessage').fadeIn('slow');
                        $('#ErrorMessage').css("display", "flex");
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) { 
                    console.log(xhr.status); 
                    console.log(thrownError); 
                },
                complete: function(data) { 
                    $form.find('input[type="submit"]').prop('disabled', false); 
                }
            });
        }
    };
    
    /* ----------- */
    /* SECOND PAGE */
    /* ----------- */
    if ($('#SHeader').is('#SHeader')) {
            
        // SHOW/HIDE TOP MENU ON DIFFERENT RESOLUTIONS
        showHideMenu();
        
        // START ACHIEVEMENTS SPIN
        spinAchievements();
        
        // SAME HEIGHT OF PRODUCTS BLOCKS
        $('.match-height', '#SProducts .product-col').matchHeight();
        
        // SHOW DOWNLOAD FORM IF IT EXIST
        if ($('#SPopUpForm').is('#SPopUpForm')) {
            setTimeout(function() {
                if ($('#SPopUpForm').css("display") === "none") {
                    $('#SPopUpForm').fadeIn('slow');
                }
            }, 5000);
        }
        
        /* SECOND PAGE EVENTS */
        
        // MOBILE MENU BUTTON
        $('.mobile-nav-btn', '#SHeader').on('click', classNamespace.openCloseMenu);
        
        // PRODUCTS
        $('.wrapper', '#SProducts .product-col')
        .hover(classNamespace.animateProduct, classNamespace.animateProduct);
        
        // CLOSE DOWNLOAD FORM BUTTON
        $('#CloseForm', '#SPopUpForm').on('click', classNamespace.closeDownloadForm);
        
        // DOWNLOAD FORM
        $('#DownloadForm', '#SPopUpForm').submit(classNamespace.sendDownloadForm);
    }
    
    // IN CASE OF RESIZE VIEWPORT
    $(window).resize(function() {
        
        /* SECOND PAGE */
        if ($('#SHeader').is('#SHeader')) {
            
            // SHOW/HIDE TOP MENU ON DIFFERENT RESOLUTIONS
            showHideMenu();
            
            // START ACHIEVEMENTS SPIN
            spinAchievements();
            
            // SAME HEIGHT OF PRODUCTS BLOCKS
            $('.match-height', '#SProducts .product-col').matchHeight();
        }
    });
    
    // IN CASE OF SCROLLING VIEWPORT
    $(window).scroll(function() {
        
        /* SECOND PAGE */
        if ($('#SHeader').is('#SHeader')) {
            
            // START ACHIEVEMENTS SPIN
            spinAchievements();
        }
    });
});