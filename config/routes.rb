Rails.application.routes.draw do
  resources :devices
  resources :temperatures
  resources :locations
  get '/api/image', to: 'test_image#test_post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
