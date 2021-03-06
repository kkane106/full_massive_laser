// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require google

$(document).ready(function() {

  $('[data_complete="true"]').on("click",function(event) {
    event.preventDefault();
    var ticket_update_url = "/tickets/complete/" + $('[data-ticket]').data().ticket;
    $.ajax({
      url: ticket_update_url,
      type: 'PUT'
    }).success(function(response) {
      console.log("response")
      console.log(response)
      $('[data-ticket-show]').empty();
      $('[data-ticket-show]').append(response.toString());
      location.reload()
    });
  });

  $('[data-ticket-btn]').on("click", '[data_pro="true"]', function(event) {
    event.preventDefault();
    var ticket_update_url = "/tickets/" + $('[data-ticket]').data().ticket;
    $.ajax({
      url: ticket_update_url,
      type: 'PUT'
    }).success(function(response) {
      $('[data-ticket-show]').empty();
      $('[data-ticket-show]').append(response.toString());
      location.reload()
    });
  });


});
