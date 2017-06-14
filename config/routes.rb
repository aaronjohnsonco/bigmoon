Rails.application.routes.draw do

  resources :contacts
  get 'pages/home'
  get 'next-step', to: 'pages#next_step'
  get 'work', to: 'pages#work'
  get 'about', to: 'pages#about'
  get 'send-a-message', to: 'pages#message'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
