                        
$(document).ready(function() {
    $('div#hoverDiv').hover(function() {
        $(this).css({
            'background-color': 'blue',
            'color': 'pink'
        });
    }, function() {
        $(this).css({
            'background-color': 'red',
            'color': 'white'
        });
    });
});
     

$(document).ready(function(){
    $("li").click(function(){
        $(this).hide();
    });
});


$(document).ready(function(){
    $("p").parent().css({"color": "red", "border": "2px solid red"});
});