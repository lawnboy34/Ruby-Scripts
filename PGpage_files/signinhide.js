jQuery(document).ready(function () {
    $('#signdiv').click(function () {

        if ($('#signinout').css('display') == 'none') {
            $('#signinout').css('display', 'block'); // toggle(1000) didn't work on ie8;
            $(this).attr('value', 'Hide');
        }
        else {
            $('#signinout').css('display', 'none');
            $(this).attr('value', 'Sign In');
        }
        if (event.preventDefault)
            event.preventDefault();
        return false;
    });
});