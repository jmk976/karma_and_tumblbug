/**
 * 
 */

$(document).ready(function(){

let currentYear = (new Date()).getFullYear();
    let startYear = currentYear-5;
    let finalYear = currentYear+5;

    let options = {

            startYear: startYear,

            finalYear: currentYear,

            pattern: 'yyyy-mm',

            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']

    };

    
   $('#btn_perMonth').bind('click',function(){
	 $('#perMonth').monthpicker('show');
   });
   
});


