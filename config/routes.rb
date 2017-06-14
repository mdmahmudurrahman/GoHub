Rails.application.routes.draw do

  resources :employees
  namespace :company do
    get 'users/show'
  end

  devise_for :users, controllers: {
    registrations: "registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  scope "(:locale)", locale: /en|da/ do
    root "static_pages#search_gear"

    get "about", to: "static_pages#about"
    get "contact", to: "static_pages#contact"

    namespace :company do
      get "settings", to: "static_pages#setting"
      get "edit/:id", to: "users#edit"
      patch "edit/:id", to: "users#update"
    end
  end
end
