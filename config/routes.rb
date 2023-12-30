Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "/" => "rails/health#show"

  namespace :api, format: :json do
    namespace :v1 do
      options 'login', to: 'authentication#login'
      get 'login', to: 'authentication#login'
      post 'logout', to: 'authentication#logout'

      post 'family', to: 'users#family'

      options 'users/add', to: 'users#add'
      post 'users/add', to: 'users#add'

      post 'measurements/all', to: 'measurements#all'
      options 'measurements/add', to: 'measurements#add'
      post 'measurements/add', to: 'measurements#add'
      post 'measurements/:query', to: 'measurements#query',
           defaults: { query: 'list' },
           constraints: { query: /(dates|warnings|list)/ }
      options 'measurements/:query', to: 'measurements#query',
           defaults: { query: 'list' },
           constraints: { query: /(dates|warnings|list|all)/ }


      post 'entities/filter', to: 'entities#filter'
      options 'entities/filter', to: 'entities#filter'
      post 'entities/add', to: 'entities#add'
      options 'entities/add', to: 'entities#add'
      post 'entities/groups', to: 'entities_groups#list'
      options 'entities/groups', to: 'entities_groups#list'

      post ':entity', to: 'measurements#entity'
      options ':entity', to: 'measurements#entity'
    end
  end
end
