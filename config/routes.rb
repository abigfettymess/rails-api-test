Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :test2, only: [:index]
    end
  end
  # namespace :api do
  #   namespace :v1 do
  #     get 'test/index'
  #   end
  # end
  # Test  RESTful Routes
  get 'api/v1/test', to: 'api/v1/test#index'
  get 'api/v1/test/:id', to: 'api/v1/test#show'
  get 'api/v1/test/new', to: 'api/v1/test#new'
  post '/api/v1/test', to: 'api/v1/test#create'
  put '/api/v1/test/:id', to: 'api/v1/test#update'
  delete '/api/v1/test/:id', to: 'api/v1/test#destroy'


  namespace :api do
    namespace :v1 do
      resources :test
      resources :users do
        resources :facts
      end
    end
  end
end
