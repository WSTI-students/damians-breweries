# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
styles = ['Altbier', 'Amber ale', 'Barley wine', 'Berliner Weisse', 'Bière de Garde', 'Bitter', 'Blonde Ale', 'Bock', 'Brown ale', 'California Common/Steam Beer', 'Cream Ale', 'Dortmunder Export', 'Doppelbock', 'Dunkel', 'Dunkelweizen', 'Eisbock', 'Flanders red ale', 'Golden/Summer ale', 'Gose', 'Gueuze', 'Hefeweizen', 'Helles', 'India pale ale', 'Kölsch', 'Lambic', 'Light ale', 'Maibock/Helles bock', 'Malt liquor', 'Mild', 'Oktoberfestbier/Märzenbier', 'Old ale', 'Oud bruin', 'Pale ale', 'Pilsener/Pilsner/Pils', 'Porter', 'Red ale', 'Roggenbier', 'Saison', 'Scotch ale', 'Stout', 'Vienna lager', 'Witbier', 'Weissbier', 'Weizenbock']
styles.each { |name| Style.create(name: name) }

ingredients = [{ name: 'Woda', category: 'water' }, { name: 'Słód pilzneński', category: 'malt' }, { name: 'Słód Pale Ale', category: 'malt' }, { name: 'Słód monachijski', category: 'malt' }, { name: 'Marynka', category: 'hopp' }, { name: 'Curacao', category: 'addition' }, { name: 'Simcoe', category: 'hopp' }]
ingredients.each { |i| Ingredient.create(name: i[:name], category: i[:category]) }

recipes = [{ name: 'IPA 2018', description: 'Super piwo', style_id: 23, process_desc: 'Zacieranie: 70 min 68C, Chmielenie 60 min', user_id: 1, visibility_level: 1 },
			{ name: 'Stout 2018', description: 'Jeszcze lepsze piwo', style_id: 40, process_desc: 'Loreem ipsum', user_id: 1, visibility_level: 1 },
			{ name: 'Saison 2018', description: '', style_id: 38, process_desc: 'Zacieranie: , Filtracja: Chmielenie:', user_id: 1, visibility_level: 1 }]

recipes.each { |r| Recipe.create(name: r[:name], description: r[:description], style_id: r[:style_id], process_desc: r[:process_desc], user_id: r[:user_id], visibility_level: r[:visibility_level]) }
