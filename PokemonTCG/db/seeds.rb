# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pokemon_tcg_sdk'
require 'json'
require 'json'
require 'faker'
require 'rest-client'



User.destroy_all
Card.destroy_all
Deck.destroy_all

User.create(name: 'Ash Ketchum', email: 'pokemon@gmail.com', password: '1234')

5.times do 
    User.create(name: Faker::Name.name, email: Faker::Internet.email, password: '1234')
end

Deck.create(set_name: 'Black & White', release_date: '04/25/2011')



def api_search
     response = RestClient.get('https://api.pokemontcg.io/v1/cards')
     api_response = JSON.parse(response)

     api_response["cards"].each do |poke|
        if poke["nationalPokedexNumber"]
            name = poke["name"]
            move = poke["attacks"][0]["name"]
            type = poke["types"][0]
            number = poke["nationalPokedexNumber"]
            rarity = poke["rarity"]
            url = poke["imageUrlHiRes"]
            url_tiny = poke["imageUrl"]

            Card.create(url: url, url_tiny: url_tiny ,name: name, move: move , poke_type: type, number: number, user: User.all.sample, deck: Deck.first, rarity: rarity)
        end
    end
end
 api_search

 
