$(document).ready(function()
{
  
  $('#save-button').on('click', function(e){
    alert('New applicant created!');
  });
  
  $('#update-button').on('click', function(e){
    alert('Applicant updated!');
  });

  if ($('#mobile-number').length != 0){
   var number = $('#mobile-number').text(),
      prefix = number.substring(0, 4),
      network = null,
      msg = "The applicant is a :network subscriber";
    
    
    switch (prefix){
      case '0917':
      case '0906':
      case '0915':
        network = "Globe";
        break;
      
      case '0908':
      case '0928':
        network = "Smart";
        break;
        
      default:
        network = "WTF";
    }
    
    msg = msg.replace(':network', network);
    alert(msg);
  }
});
