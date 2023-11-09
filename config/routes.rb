Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api, format: :json do
    namespace :v1 do
      get 'family', to: 'users#family'

      post 'measurements', to: 'measurements#filter'
      post 'measurements/dates', to: 'measurements#dates'

      post 'entities/filter', to: 'entities#filter'
      get ':entity', to: 'entities#list'
      post ':entity', to: 'entities#list'
    end
  end
end
