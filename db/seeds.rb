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
