$(document).ready(function() {
    $("#id_nav_button").click(function(e) {
        e.preventDefault();
        //alert("Clicked");
        $("#id_topnav").slideToggle(400);
    });
});
