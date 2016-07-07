$(function() {

	"use strict";

	$('.contact-form').on("submit", function(){
		var $this = $(this);
						   
		$('.invalid').removeClass('invalid');						   
		var msg = 'Заполните следующие поля:',
			successMessage = "Ваше письмо очень важно для нас. Мы свяжимся с вами при первой же возможности.",
			error = 0,
			pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);


		if ($.trim($('.contact-form input[name="name"]').val()) === '') {error = 1; $this.find('input[name="name"]').parent().addClass('invalid'); msg = msg +  '\n - Имя';}
        if (!pattern.test($.trim($('.contact-form input[name="email"]').val()))) {error = 1; $this.find('input[name="email"]').parent().addClass('invalid'); msg = msg +  '\n - Email';}
		if ($.trim($('.contact-form textarea[name="message"]').val()) === '') {error = 1; $this.find('textarea[name="message"]').parent().addClass('invalid'); msg = msg +  '\n - Сообщение';}

        if (error){
        	updateTextPopup('Ошибка', msg);
        }else{
        	/*var data_req = {}
            	data_req['name'] = $.trim($this.find('input[name="name"]').val()),
            	data_req['email'] = $.trim($this.find('input[name="email"]').val()),
            	data_req['subject'] = ($this.find('input[name="subject"]').length)?$.trim($this.find('input[name="subject"]').val()):'',
            	data_req['message'] = $.trim($this.find('textarea[name="message"]').val());
            }*/
        	$.ajax({
	            type: $this.attr('method'),
	            url: $this.attr('action'),
	            data: $this.serialize(),

	            success: function(response) {
	                if(response == 'OK') {
	                    updateTextPopup('Спасибо!', successMessage);
			        	$this.append('<input type="reset" class="reset-button"/>');
			        	$('.reset-button').click().remove();
			        	$this.find('.focus').removeClass('focus');
	                } else {
	                    updateTextPopup('Ошибка');
	                }
	                
	            },
	            error: function(error) {
	            	updateTextPopup('Ошибка', error);
	            }
	        });
        }
	  	return false;
	});

	$(document).on('keyup', '.input-wrapper .input', function(){
		$(this).parent().removeClass('invalid');
	});

	function updateTextPopup(title, text){
		$('.text-popup .text-popup-title').text(title);
		$('.text-popup .text-popup-message').text(text);
		$('.text-popup').addClass('active');
	}

});