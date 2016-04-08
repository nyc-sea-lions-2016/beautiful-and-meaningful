# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = Category.create([{name: 'nature'}, {name: 'inspirational'}, {name: 'sports'}, {name: 'abstract'}, {name: 'hipster'}, {name: 'celebrity'}, {name: 'trump'}])

quotes_nature =  Quote.create([{content: "Blah blah blah. Emotions and stuff", category_id: Category.find_by(name: nature).id}], {content: "This earth is all we have in common", category_id: Category.find_by(name: nature).id})
quotes_trump =  Quote.create([{}])
quotes_sports =  Quote.create([{}])
quotes_abstract =  Quote.create([{}])