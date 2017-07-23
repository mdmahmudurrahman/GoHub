// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
//= require moment
//= require daterangepicker

var optDivModal = ["ads-price-range-div", "ads-gear-type-div", "ads-gear-size-div",
  "ads-more-filters-div", "gear-types"];
function hideAllOthersDiv(divName) {
  for(i = 0; i < optDivModal.length; i++) {
    if(divName != optDivModal[i]) {
      var d = document.getElementById(optDivModal[i]);
      if(d != null) {
        d.style.display = 'none';
      }
    }
  }
}
