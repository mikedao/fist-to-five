Rails.application.routes.draw do
  root to: 'polls#new'
  post '/polls', to: 'polls#create'
  get '/polls/:id', to: 'polls#show'
  post '/polls/:id', to: 'polls#update'
end
