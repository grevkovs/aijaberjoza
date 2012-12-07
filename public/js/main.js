function exp_padding(){
  var wd = $(".first .work").first().css("width").replace("px", "");
  var pd = (wd - 200)/2;
  $(".expr .expr-text").css("padding", "0 "+pd+"px");
}

exp_padding();

$(window).resize(function() {
  exp_padding();  
})