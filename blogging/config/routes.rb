Rails.application.routes.draw do
  resources :widgets
  resources :comments
  resources :authors
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tests#welcome'
  get '/tests/about' => 'tests#about'
end
