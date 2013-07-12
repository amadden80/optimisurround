

var Global_Data = {}


$(function(){

$("#cutting-pad").click(function(e){
    Global_Data.x_percnt = parseFloat(e.offsetX)/$("#cutting-pad").width();
    Global_Data.y_percnt = parseFloat(e.offsetY)/$("#cutting-pad").height();
  })

  $("#cutting-pad").on('click', function(pd){

    $.ajax({
    type: "POST",
    url: "/sciss",
    data: Global_Data,
    dataType:"script"
    })

  })
  

})