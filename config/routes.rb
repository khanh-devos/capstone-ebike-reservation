Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'users/sign_out', to: "users#user_sign_out", as: "user_sign_out"


  resources :users, only: %i[index] do
    resources :ebikes, only: %i[index] do
      resources :reservations, only: %i[index]
    end
  end

end
