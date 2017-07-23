$(document).on('turbolinks:load', function() {
  jQuery(function(){
    $("#gear-type-bike").hide();
    $("#gear-type-surfboard").hide();
    $("#gear-type-snowboard").hide();
    $("#bike-extras").hide();
    $("#surfboard-extras").hide();
    $("#snowboard-extras").hide();
    $('input:radio[name="gear[category_id]"]').change(function() {
      $(".gear-category").css("background-color", "");
      $("#"+this.id+"_image").css("background-color", "#5bc0de");
      if ($(this).val() == '1') {
        $("#gear-type-bike").show();
        $("#gear-type-surfboard").hide();
        $("#gear-type-snowboard").hide();
        $("#bike-extras").show();
        $("#surfboard-extras").hide();
        $("#snowboard-extras").hide();
      }
      else if($(this).val() == '2') {
        $("#gear-type-surfboard").show();
        $("#gear-type-bike").hide();
        $("#gear-type-snowboard").hide();
        $("#bike-extras").hide();
        $("#surfboard-extras").show();
        $("#snowboard-extras").hide();
      }
      else if($(this).val() == '3') {
        $("#gear-type-snowboard").show();
        $("#gear-type-bike").hide();
        $("#gear-type-surfboard").hide();
        $("#bike-extras").hide();
        $("#surfboard-extras").hide();
        $("#snowboard-extras").show();
      }
    });

    $('input:hidden[name="gear[attributes][attribute_id]"]').change(function() {
      $(".bike-type").css("background-color", "");
      $(".surfboard-type").css("background-color", "");
      $(".snowboard-type").css("background-color", "");
      $("#"+this.id+"_image").css("background-color", "#5bc0de");
    });

    $('input:hidden[name="gear[attributes][attribute_ids][]"]').change(function() {
      // $(".bike-type").css("background-color", "");
      // $(".surfboard-type").css("background-color", "");
      // $(".snowboard-type").css("background-color", "");
      $("#"+this.id+"_image").css("background-color", "#5bc0de");
    });
  });
});
