Rails.application.routes.draw do
  root 'welcome#index'

  # get '/todos', to: 'todos#index'
  # get 'todos/new', to: 'todos#new'
  # get '/todos/:id', to: 'todos#show'
  # get '/todos/:id/edit', to: 'todos#edit'
  # post '/todos', to: 'todos#create'
  # put '/todos', to: 'todos#update'
  # delete '/todos', to: 'todos#destroy'

  resources :todos
end
