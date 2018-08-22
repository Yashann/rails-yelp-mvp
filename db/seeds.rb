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
puts 'Finished!'
