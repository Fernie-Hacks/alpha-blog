Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  #Routes for links that do not hit the database, just simulates states.
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #Add a Post resouce example
  #post 'users', to: 'users#create'

end
