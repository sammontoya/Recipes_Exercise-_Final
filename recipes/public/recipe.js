$(document).ready(function() {
var domElement = $(".mapitem");
setInterval(function(){
  $.ajax({
    dataType: 'json',
    url: '/recipes/random_recipe.json',
    success: function(recipe){
      domElement.html("<div class='updatebox'><h1>Try a Recipe!</h1></br><h2><a href='/recipes/"+recipe.id+"'>"+ recipe.title +"</a></h2><h3> By: " + recipe.author +"</h3> <img class='random_recipe_image' src='images/"+recipe.image_file_name+"'alt='recipe image'></div>" );
    }
    // error: function(){
    //   domElement.html("No response.  The server may be down.");
    // }
//src='images/cupkcakses.jpg'

  });
}, 3000);
});
