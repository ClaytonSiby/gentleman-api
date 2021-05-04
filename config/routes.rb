Rails.application.routes.draw do
    # namespace the controllers without affecting the URI
    scope module: :v1, contraints: ApiVersion.new('v1', true) do
      resources :suits
      resources :appointments, only: %i[create destroy]
    end

    post '/auth/login', to: 'authentication#authenticate'
    post '/signup', to: 'users#create'
end
