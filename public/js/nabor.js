$(document).ready(function() {

    $('.link_lock').click(function() {
        var name = $(this).closest('div').contents('.name_lock').text();
        var cost = $(this).closest('div').contents('.cost').text();
        $('#block_lock').html("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span> <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>")


    });


    $('.link_jamb').click(function() {
        var name = $(this).closest('div').contents('.name_jamb').text();
        var cost = $(this).closest('div').contents('.cost').text();

    $('#block_jamb').html("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span>  <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>");
    });


    $('.link_cylinder').click(function() {
        var name = $(this).closest('div').contents('.name_cylinder').text();
        var cost = $(this).closest('div').contents('.cost').text();
    $('#block_cylinder').html("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span>  <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>");
    });


    $('.link_finding').click(function() {
        var name = $(this).closest('div').contents('.name_finding').text();
        var cost = $(this).closest('div').contents('.cost').text();
    $('#block_finding').html("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span>  <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>");

    });

    $('.link_doplock').click(function() {
        var name = $(this).closest('div').contents('.name_doplock').text();
        var cost = $(this).closest('div').contents('.cost').text();
        $('#dop_lock').append("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span> <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>");


    });


    $('.link_dopoption').click(function() {
        var name = $(this).closest('div').contents('.name_dopoption').text();
        var cost = $(this).closest('div').contents('.cost').text();
        $('#dop_option').append("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span> <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>");


    });

    $('.link_externalpanel').click(function() {
        var name = $(this).closest('div').contents('.name_externalpanel').text();
        var cost = $(this).closest('div').contents('.cost').text();
    $('#block_external_type_panel').html("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span>  <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>");

    });


    $('.link_internalpanel').click(function() {
        var name = $(this).closest('div').contents('.name_internalpanel').text();
        var cost = $(this).closest('div').contents('.cost').text();
        $('#block_internal_type_panel').html("<div class='dopp'><span class='name_spisok'>" + name + "</span>" + "<span class='cost'> " + cost + " руб.</span>  <span class='del'><img width='11' height='11' src='/images/del.png' alt='удалить' /> </span></div>");

    });

    $('.del').live('click', function() {
        $(this).closest('.dopp').remove();
    });

});

