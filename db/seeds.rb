puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'french',
    phone_number: '0187653212'
  },

  {
    name:         'Treod',
    address:      'Casablanca',
    category:  'chinese',
    phone_number: '0187653212'
  },
  {
    name:         'Poulu',
    address:      'Rabat',
    category:  'japanese',
    phone_number: '0187653512'
  }
]

Restaurant.create!(restaurants_attributes)

r1 = Restaurant.find(1)
rev = Review.new(content: "amawing",rating: 5)
rev.restaurant = r1
rev.save

r2 = Restaurant.find(3)
rev = Review.new(content: "amazing",rating: 4)
rev.restaurant = r2
rev.save

puts 'Finished!'
