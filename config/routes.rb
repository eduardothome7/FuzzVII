Rails.application.routes.draw do

  resources :mod_tours
  resources :events
  resources :calendars
  resources :event_categories
  resources :rooms
  get 'pages/about'

  get 'pages/terms'

  get 'pages/tour'

  get 'pages/plans'

  resources :studios 

  namespace :studios do 
    post 'get_by_name'
  end  

  get 'home/index'

  get 'home/about'

  get 'home/terms'
  
  root :to => 'home#index'
  
  resources :user_plan_months
  resources :user_plans
  resources :plan_mods
  resources :plans
  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }
  resources :category_mods
  resources :icons
  resources :mods

  resources :studio_steps

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
