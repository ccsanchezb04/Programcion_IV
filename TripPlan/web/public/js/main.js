/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $('.carousel').carousel();
    
    // Ajax de consulta
    $('#searchTravReg').click(function(event) {
        var datoBusqueda = $('#travelerDocReg').val();
        
        $.ajax({
            url: 'ControllerServlet',
            type: 'POST',
            data:{dato: datoBusqueda},
            dataType: 'html'		  	
        }).done(function(data) {
            $('#result-reg').html(data);
        }).fail(function(data) {
            $('#result-reg').html(data);
        });
    });
});