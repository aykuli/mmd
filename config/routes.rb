Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/" => "rails/health#show"

  namespace :api, format: :json do
    namespace :v1 do
      options 'login', to: 'authentication#login'
      get 'login', to: 'authentication#login'

      post 'family', to: 'users#family'

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
