Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks" }

  root "static_pages#search_gear"

  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"
end
