Rails.application.routes.draw do
  root "static_pages#search_gear"

  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"
end
