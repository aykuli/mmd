Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/" => "rails/health#show"

  namespace :api, format: :json do
    namespace :v1 do
      get 'family', to: 'users#family'
      options 'login', to: 'authentication#login'
      post 'login', to: 'authentication#login'

      post 'measurements/:query', to: 'measurements#query',
           defaults: { query: 'list' },
           constraints: { query: /(dates|warnings|list)/ }
      options 'measurements/:query', to: 'measurements#query',
           defaults: { query: 'list' },
           constraints: { query: /(dates|warnings|list)/ }

      post ':entity', to: 'measurements#entity'
      options ':entity', to: 'measurements#entity'
    end
  end
end
