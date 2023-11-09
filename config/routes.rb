Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api, format: :json do
    namespace :v1 do
      get 'family', to: 'users#family'

      post 'measurements', to: 'measurements#filter'

      get 'entities/list', to: 'entities#entities_list'
      post 'entities/list', to: 'entities#entities_list'
      get ':entity', to: 'entities#list'
      post ':entity', to: 'entities#list'


    end
  end
end
