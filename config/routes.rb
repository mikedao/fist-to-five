Rails.application.routes.draw do
  root to: 'polls#new'
  post '/polls', to: 'polls#create'
  get '/polls/:id', to: 'polls#show'
  post '/polls/:id', to: 'polls#update'
  get '/polls', to: 'polls#index'

  namespace :api do
    namespace :v1 do
      resources :polls, only: [:create]
    end
  end
end
