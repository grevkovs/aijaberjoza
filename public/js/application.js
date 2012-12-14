$('a.gmodal').modal({opacity: 0.85});

$("#refresh_recommendation").on('click', function(event) {
  event.preventDefault();
  recomendations = _.shuffle(recomendations)
  $(this).closest(".quotes").find('.quote').html(recomendations[0].text);
  $(this).closest(".quotes").find('.signature').html(recomendations[0].name);
});