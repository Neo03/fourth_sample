function updateCountdown() {
	// 140 is the max length
	var remaining = 140 - jQuery('#micropost_content').val().length;
	if (remaining > 0) {
		jQuery('.countdown').text(remaining + 'characters remaining');	
	} 
		else{
			jQuery('.countdown').text('You exceed number of characters!');			
		};
	

	var color = 'grey';
	
	if (remaining < 21) { color = 'black'; }
	if (remaining < 11) { color = 'red'; };	
	$('.countdown').css({ color: color });
}

jQuery(document).ready(function($){
	updateCountdown();
	$('#micropost_content').change(updateCountdown);
	$('#micropost_content').keyup(updateCountdown);
	$('#micropost_content').keydown(updateCountdown);
});