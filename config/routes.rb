Rails.application.routes.draw do

  get 'pages/home'
  get 'next-step', to: 'pages#next_step'
  get 'work', to: 'pages#work'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
