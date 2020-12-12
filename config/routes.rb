Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :admins
  resources :response_options
  resources :responses
  resources :users
  resources :questions
  resources :surveys
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
