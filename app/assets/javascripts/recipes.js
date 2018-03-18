// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
	var wrapper         = $(".ingredients_wrap");
    var add_button      = $(".add_ingredient_button");

    lp = 1;

    $(add_button).click(function(e) {
    	e.preventDefault();
    	jQuery.ajax(
		{
			url : '/ingredients/all',
			type : 'get',
			success : function( response ) {
				html = 'Wybierz z listy: <select name="recipe_form[ingredients]['+lp+']">';
				$.each(response.ingredients, function(index, item) {
					html += '<option value="'+item.id+'">'+item.name+'</option>';
				});
				html += '</select>'
				html += 'Lub wpisz własny: <input type="text" name="recipe_form[ingredients_custom]['+lp+']"> Ilość: <input type="text" name="recipe_form[ingredients_quantity]['+lp+']"><br />';
				$(wrapper).append(html);
				lp++;
				console.log(lp);
			}
		});
    });
});
