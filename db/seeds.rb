puts 'destroy in progress'
Restaurant.destroy_all
puts 'destroy done'

puts 'creating restaurant'
Restaurant.create(name: 'Pitaya', address: 'Toulouse', rating: 4)
Restaurant.create(name: 'Le burger maison', address: 'Paris', rating: 5)
puts 'restaurant created'