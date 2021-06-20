FactoryBot.define do
  factory :user do
    username { 'Clayton' }
    email { 'clayton@example.com' }
    password { 'mrPassword2021' }
    admin { false }
  end
end
