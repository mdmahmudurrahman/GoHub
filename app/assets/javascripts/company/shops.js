jQuery(function(){
  var i = 0;
  var shopsInformation = [];

  $("#shop-information-btn-add").click(function (e) {
    e.preventDefault();
    i = i + 1;
    shopName = $("#shop_name").val();
    addressLine1 = $("#shop_address_line_1").val();
    addressLine2 = $("#shop_address_line_2").val();
    shopZipCode = $("#shop_zipcode").val();
    city = $("#shop_city").val();
    country = $("#shop_country").val();
    phoneNumber = $("#shop_phone_number").val();

    $(".added-shops").append($("<div class='added-shop'>" +
      "<span class='glyphicon glyphicon-trash pull-right' id='delete-added-shop-"+i+"'>" +
      "</span><p class='added-shop-name'>"+shopName+"</p>" +
      "<p class='added-shop-address-line'>"+addressLine1+"</p>" +
      "<p class='added-shop-address-line'>"+addressLine2+"</p>" +
      "<p class='added-shop-zipcode display-side'>"+shopZipCode+";</p>" +
      "&nbsp;&nbsp;<p class='added-shop-city display-side'>"+city+";</p>" +
      "&nbsp;&nbsp;<p class='added-shop-country display-side'>"+country+"</p>" +
      "<p class='added-shop-phone-number'>"+phoneNumber+"</p></div>"));

    shopsInformation.push({ id: i, name: shopName, address_line_1: addressLine1,
      address_line_2: addressLine2, zipcode: shopZipCode, city: city,
      country: country, phone_number: phoneNumber
    });

    $("#delete-added-shop-"+i+"").on("click", function(e){
      if (confirm("Are you sure to remove the added shop!") == true) {
        id = this.id.split("-").reverse()[0];
        shopsInformation = shopsInformation.filter(function(item) {
          return (item.id != id);
        });
        $(this).parent().remove();
      }
    });
  });

  $("#shop-information-btn-submit").on("click", function (e) {
    e.preventDefault();
    for(var i = shopsInformation.length; i--;) {
      delete shopsInformation[i].id;
    }

    $.ajax({
      url : "/company/shops",
      type : "post",
      data : {data: JSON.stringify(shopsInformation)}
    });
  });
});
