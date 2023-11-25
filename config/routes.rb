Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api, format: :json do
    namespace :v1 do
      get 'family', to: 'users#family'

      post 'measurements/:query', to: 'measurements#query',
           defaults: { query: 'dates' },
           constraints: { query: /(dates|warnings)/ }
      options 'measurements/:query', to: 'measurements#query',
           defaults: { query: 'dates' },
           constraints: { query: /(dates|warnings)/ }

      post ':entity', to: 'measurements#entity'
      options ':entity', to: 'measurements#entity'
    end
  end
end
