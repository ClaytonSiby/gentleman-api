FactoryBot.define do
    factory :suit do
        name { 'Taxido' }
        suit_type { 'Slim Fit' }
        color { 'black' }
        price { 123.45 }
        description { Faker::Lorem.paragraph }
        imageUrl { 'https://service.unsplash.com/?suit,black' }
    end
end