Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api, format: :json do
    namespace :v1 do
      get 'entities/list', to: 'queries#entities_list'
      get ':entity', to: 'queries#list'
    end
  end
end
