$(function(){
  
  // scroll
	$('a[href^="#"]').click(function () {
		var speed = 400;
		var href = $(this).attr("href");
		var target = $(href == "#" || href == "" ? 'html' : href);
		var position = target.offset().top;
		$('body,html').animate({
			scrollTop: position
		}, speed, 'swing');
		return false;
	});
	
	// pagetop
	var topBtn = $("#pagetop");
	$(window).scroll(function () {
		if ($(this).scrollTop() > 600) {
			$("#pagetop").addClass("on");
		} else {
			$("#pagetop").removeClass("on");
		}
	});
	topBtn.click(function () {
		$("body,html").animate({
			scrollTop: 0
		}, 500);
		return false;
	});
		
});
