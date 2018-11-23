Rails.application.routes.draw do
  get 'welcome/index'
 
  root 'welcome#index'
  resources :devices
  resources :temperatures
  resources :locations
  post '/api/image', to: 'test_image#test_post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
