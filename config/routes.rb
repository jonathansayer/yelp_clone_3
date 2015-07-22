Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews
  end

  root to: "restaurants#index"
  get 'restaurants' => 'restaurants#index'


    devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

end
