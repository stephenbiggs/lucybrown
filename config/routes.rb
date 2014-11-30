Lucybrown::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	resources :works, path: 'personal'
	resources :clients, only: :index, path: 'client'
  
  get 'home' => 'static_pages#home'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'


  root 'static_pages#home'

end
