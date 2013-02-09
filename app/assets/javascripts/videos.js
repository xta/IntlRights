// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {

  $('#by_video_and_country input[type=submit]').on("click", function(){
    $video_id     = $("input#video_id").val();
    $country_code = $("select#country_code").val();
    window.location.href = "/show/" + $video_id + "?iso_code=" + $country_code;
    return false;
  });

});