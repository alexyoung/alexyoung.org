$(function() {
  prettyPrint();

  $('.tag-list a.tag').live('click', function(e) {
    e.preventDefault();
    $(this).parents('h2').next('.posts').toggle();
  });

  if (window.location.hash) {
    $(window.location.hash).next('.posts').show();
  }
});
