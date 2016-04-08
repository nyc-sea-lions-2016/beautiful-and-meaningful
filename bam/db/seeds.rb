# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = Category.create([{name: 'nature'}, {name: 'inspirational'}, {name: 'sports'}, {name: 'abstract'}, {name: 'hipster'}, {name: 'celebrity'}, {name: 'trump'}])

nature = Category.find_by(name: 'nature') 
abstract = Category.find_by(name: 'abstract') 
sports = Category.find_by(name: 'sports') 
trump = Category.find_by(name: 'trump')  
inspiraional = Category.find_by(name: 'inspirational') 
hipster = Category.find_by(name: 'hipster') 
clebrity = Category.find_by(name: 'celebrity') 

quotes_nature =  Quote.create(content: "Blah blah blah. Emotions and stuff", category_id: nature.id)
	 Quote.create(content: "This earth is all we have in common", category_id: nature.id)
# quotes_trump =  Quote.create([{}])
quotes_sports =  Quote.create(content: "We didn’t underestimate them. They were a lot better than we thought.", category_id: sports.id)
	Quote.create(content: "Pro football is like nuclear warfare. There are no winners, only survivors.", category_id: sports.id)
# quotes_abstract =  Quote.create([{}])