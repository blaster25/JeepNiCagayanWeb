Rails.application.routes.draw do
  # resources :fares
  resources :fares
  devise_for :users
  resources :reports

  root 'reports#index'
  
  as :user do
  	get "/jnc_sign_up" => "devise/registrations#new"
  end

  as :fare do
  	get "/current_fare" => "fares#currentFare"
  end

end
