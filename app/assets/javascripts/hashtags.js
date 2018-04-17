// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function copyBlock() {
  var $temp = $("<textarea>");
  $("body").append($temp);
  $temp.val($('.hashtag-block').text()).select();
  document.execCommand("copy");
  $temp.remove();
  copySuccess();
}

function copySuccess() {
  $('.success-message').show()
  $('.success-message').fadeOut(2000)
}

$(document).on('turbolinks:load', function() {
  $('#copy-btn').click(copyBlock);
})