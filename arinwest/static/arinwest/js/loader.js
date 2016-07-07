

var main = function() {
    $('.staff-member').hide();
    var code = $('.sorting-menu a').parent().parent().find('.active').attr('data-code');
    $('.staff-member' + code).show();

    $('.sorting-menu a').click(function() {
        if($(this).hasClass('active')) return false;
        var prev_code = $(this).parent().parent().find('.active').attr('data-code');
        $(this).parent().parent().find('.active').removeClass('active');
        $(this).addClass('active');
        $(this).closest('.sorting-menu').find('.responsive-filtration-title .text').text($(this).text());
        var filterValue = $(this).attr('data-code');
        var width = $('.staff-member' + prev_code).css("width");
        /*$.ajax({
            url: '/getinsta',
            type: 'POST',   
            data: {"filial" : filterValue},
            
            success: function(response) {
                $('.insta-block').html(response);
            },
        });*/
        $('.staff-member').hide();
        $('.staff-member'+filterValue).css("width", width);
        $('.staff-member'+filterValue).show();
    });

};


 $(document).ready(main);