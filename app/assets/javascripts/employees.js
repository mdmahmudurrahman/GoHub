jQuery(function(){
  $("#submit-employee").click(function (e) {
    // alert("clicked");
    // console.log(e);
    e.preventDefault();
    shopName = $("#employee_name").val();
    console.log(test);
    $(".shope-zone").append($("<div class='well test-class'><p>"+shopName+"</p></div>"));
  });
});
