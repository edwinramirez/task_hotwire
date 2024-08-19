Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks

  post 'tasks/:id/toggle', to: 'tasks#toggle', as: :toggle_task

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
