

var Global_Data = {}
var sciss_node = $('<img src ="/open-sciss.png" />')


function get_hair(){
  var hair_name = '/hair/hair_'+Math.floor((Math.random()*9)+1) + '.png';
  hair_node = $('<img src ="'+hair_name+'">')
  $(hair_node).css('position', 'absolute')
  return hair_node
}


function cut_animate(){
  $(sciss_node).css('position', 'absolute')
  $(sciss_node).css('width', '3%')
  $(sciss_node).css('top', Global_Data.y_page -25);
  $(sciss_node).css('left', Global_Data.x_percnt*$("#cutting-pad").width() -10);
  $(sciss_node).show()
}


$(function(){

  $(sciss_node).hide()
  $("#pad-box").append(sciss_node)

  $("#cutting-pad").click(function(e){
      Global_Data.x_percnt = parseFloat(e.offsetX)/$("#cutting-pad").width();
      Global_Data.y_percnt = parseFloat(e.offsetY)/$("#cutting-pad").height();
      Global_Data.x_page = parseFloat(e.pageX);
      Global_Data.y_page = parseFloat(e.pageY);
      console.log(e.pageX)
    })

  $("#cutting-pad").on('click', function(pd){
    
    cut_animate()
    $.ajax({
    type: "POST",
    url: "/sciss",
    data: Global_Data,
    dataType:"script"
    }).done(function(){
      var hair_node = get_hair()
      $(hair_node).css('width', '1%')
      $(hair_node).css('top', Global_Data.y_page -10+'px');
      $(hair_node).css('left', Global_Data.x_percnt*$("#cutting-pad").width() -10 +'px');
      $("#pad-box").append(hair_node)
      sciss_node.attr('src', "/closed-sciss.png")
      $(hair_node).animate({top: '+=100'}, 1000, function(){
        $(hair_node).fadeOut(100)
        sciss_node.attr('src', "/open-sciss.png")
      })
      })
  })


})