
Rails.application.routes.draw do
  resources :tasks, except: [:new, :edit]

  match '/tasks', to: 'tasks#options', via: :options
  delete '/tasks/:id', to: 'tasks#destroy'
  
end