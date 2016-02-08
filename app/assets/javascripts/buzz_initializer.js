$(function() {
  if (typeof __Buzz == "undefined") {
    __Buzz = {options: {}};
  }
  $(".buzz_image").each(function() {
    $(this).image_zoomer(__Buzz.options);
  });
});
