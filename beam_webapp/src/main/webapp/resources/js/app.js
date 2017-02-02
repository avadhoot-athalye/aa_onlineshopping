$(document).ready(function () {
	
	//To stop the main carousel
	
    $('#myCarousel').carousel({
        interval: false
    })
    
    //for thumbnail carousel
    $('.fdi-Carousel .item').each(function () {
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));

        if (next.next().length > 0) {
            next.next().children(':first-child').clone().appendTo($(this));
        }
        else {
            $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
        }
    });
    
    
//    $('#login').show('fade');
    

    
});