Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_user
    end
    unauthenticated :user do
      root 'devise/sessions#new', as: :unauthenticated_user
    end
  end
  resources :employees
  resources :admin
end
