Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api, format: :json do
    namespace :v1 do
      get 'family', to: 'users#family'

      get 'entities/list', to: 'queries#entities_list'
      post 'entities/list', to: 'queries#entities_list'

      get ':entity', to: 'queries#list'
      post ':entity', to: 'queries#list'

    end
  end
end
