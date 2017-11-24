/**
 * 
 */
$(document).ready(function() {
    var valDiv = $('#p_vals');
    var i = $('#p_vals p').length + 1;
    $("title").html("new title");
    $('body').on('click','#addVal', function() {
        if(i<16){
            $('<br><div>' +
                '<label for="p_val' + i +'" class="">Val' + i +'</label>' +
                '<p id="p_val' + i +'">' +
                '<label for="x_val" class="">X' + i +'</label>' +
                '<input type="number" min="0" max="99" id="x_val" size="20" name="x' + i +'" value='+ Math.floor(Math.random()*100) +' placeholder="Input Value" />' +
                '</label>' +
                '<label for="y_val" class="">Y' + i +'</label>' +
                '<input type="number"  min="0" max="99" id="y_val" size="20" name="y' + i +'" value='+ Math.floor(Math.random()*100) +' placeholder="Input Value" />' +
                '</label>' +
                '<a href="#" id="removeVal">Remove</a>' +
                '</p>' +
                '</div>').appendTo(valDiv);
            i++;

        }
        return false;
    });

    $('body').on('click', '#removeVal', function() {
        if( i > 0 ) {
            $(this).parents('p').remove();
            i--;
        }
        return false;
    });
});

