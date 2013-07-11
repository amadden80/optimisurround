

var delay_diff = 0;

function play_sync(){
  var  start_time = Math.abs(delay_diff)+100
  setTimeout(function(){$("#jquery_jplayer_left").jPlayer("play", 0);}, start_time+delay_diff)
  setTimeout(function(){$("#jquery_jplayer_right").jPlayer("play", 0);}, start_time)
}

function decrease_delay(e){
  delay_diff-=5
  console.log(delay_diff)
  play_sync()
}

function increase_delay(e){
  delay_diff+=1
  console.log(delay_diff)
  play_sync()
}

var timer=0;
function start_interval(e){
  clearInterval(timer)
  timer = setInterval(function(){play_sync()}, 1000)
}
function stop_interval(e){
  clearInterval(timer)
}

$(function(){

  $("#jquery_jplayer_left").jPlayer({
        ready: function () {
          $(this).jPlayer("setMedia", {
            wav: "/nice_left.wav",
          });
        },
        play: function(){
        },
        swfPath: "/",
        supplied: "wav",
        cssSelectorAncestor: "#jp_container_left"
      });


  $("#jquery_jplayer_right").jPlayer({
        ready: function () {
          $(this).jPlayer("setMedia", {
            wav: "/nice_right.wav",
          });
        },
        swfPath: "/",
        supplied: "wav",
        cssSelectorAncestor: "#jp_container_right"
      });




$('#decrease-delay').on('click', decrease_delay)
$('#increase-delay').on('click', increase_delay)  
$('#start-timer').on('click', start_interval)
$('#stop-timer').on('click', stop_interval)
 

setInterval

});

  // var jPlayer_right = $("#jplayer_right")
  // var jPlayer_right.jPlayer({
  //     ready: function () {
  //     },
  //     timeupdate: function(event) {      
  //     },
  //     play: function(event) {
  //     },
  //     pause: function(event) {
  //     },
  //     ended: function(event) {
  //     },
  //     swfPath: "../js",
  //     cssSelectorAncestor: "#jp_container",
  //     supplied: "wav",
  //     wmode: "window"
  //   });

  // $('.players').addClass('jp-jplayer')



  // $('#jplayer_left').jPlayer( "setMedia", {wav: "/nice.wav"})
  // $('#jplayer_left').jPlayer( "setMedia", {wav: "/nice.wav"})

  // $('#jplayer_left').jPlayer("load")
  // $('#jplayer_right').jPlayer("load")

  // $('#jplayer_left').jPlayer("play")
  // $('#jplayer_right').jPlayer("play", 0)





