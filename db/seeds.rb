# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
    Movie.create(
        name: Faker::Movie.title,
        synopsis: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),        
        director: Faker::Book.author        
    )
    Serie.create(
        name: Faker::Book.title,
        synopsis: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),        
        director: Faker::Book.author        
    )
    DocumentaryFilm.create(
        name: Faker::Music.album,
        synopsis: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),        
        director: Faker::Book.author        
    )
end

puts "10 Movies added"
puts "10 Series added"
puts "10 Documentary Films added"