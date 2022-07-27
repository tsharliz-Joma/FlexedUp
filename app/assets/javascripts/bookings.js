$(document).ready( function(){
    $("#location").on("change", function(){
        // Get the location 
        const location = $(this).val();
        // Hide the selects
         $('.sessions select').hide();
        // show the location select
        $('#'+location).show();
    })
    $('.sessions select:first').show();
})

