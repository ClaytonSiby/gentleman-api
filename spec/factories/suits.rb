FactoryBot.define do
  factory :suit do
    name { 'Taxido' }
    suit_type { 'Slim Fit' }
    color { 'black' }
    size { 'S' }
    price { 123.45 }
    description { 'Black Taxido, slim fit' }
    imageUrl { 'https://service.unsplash.com/?suit,black' }
  end
end
