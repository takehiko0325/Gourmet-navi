Rails.application.routes.draw do
  devise_for :users
  root to: "shops#index"
  get '/shop/category', to: "shops#category"
  resources :shops do
    collection do
      post :confirm
    end
    member do
      get 'search'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
