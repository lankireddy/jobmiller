Rails.application.routes.draw do
  resources :educational_details
  resources :professional_infos
  resources :employers do
   collection do
   	get 'employers/home'
   end
  end
  resources :jobseekars
  devise_for :users
  resources :homes
  root 'homes#index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
