Rails.application.routes.draw do
  root to: 'tasks#index'

  get '/:id', to: 'tasks#show'

  get '/task/new', to: 'tasks#new'
  post '/task/new', to: 'tasks#create'

  get '/:id/complete', to: 'tasks#complete', as: 'task_complete'

  get '/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch '/:id/edit', to: 'tasks#update'

  delete '/:id', to: 'tasks#destroy', as: 'task_delete'
end
