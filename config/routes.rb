Rails.application.routes.draw do
    root 'v1/suits#index'
    # namespace the controllers without affecting the URI
    scope module: :v1, contraints: ApiVersion.new('v1', true) do
      resources :suits
      resources :appointments, only: %i[index create destroy]
    end

    post '/auth/login', to: 'authentication#authenticate'
    post '/signup', to: 'users#create'
end
