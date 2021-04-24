FactoryBot.define do
    factory :suit do
        name { 'Taxido' }
        type { 'Slim Fit' }
        color { 'black' }
        price { 123.45 }
        description { Faker::Lorem.paragraph }
        imageUrl { 'https://service.unsplash/?suit,black' }
    end
end