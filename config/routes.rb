Rails.application.routes.draw do
  resources :tasks do
  	member do
  		put :change
  	end
  end
  devise_for :users
  get 'pages/home'

  # The priority is based upon order of creatin: first created highest priority
  # See how all your routes lay out with "rake routes"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get 'about' => "pages#about"
end
