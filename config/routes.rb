Rails.application.routes.draw do
  
    resources :todos, only: [:index, :create, :update, :destroy]

    patch '/todos/:id/complete', to: 'todos#complete'

 
end
