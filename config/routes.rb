Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/tasks',  to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new'
  get '/tasks/:id/edit', to: 'tasks#edit'
  get '/tasks/:id', to: 'tasks#show'

  post 'tasks', to: 'tasks#create'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end
