Rails.application.routes.draw do
  #TODO: will change later
  # namespace :company do
  #   get 'users/show'
  # end
  devise_for :users, controllers: {
    registrations: "registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  scope "(:locale)", locale: /en|da/ do
    root "static_pages#home"
    get "about", to: "static_pages#about"
    get "contact", to: "static_pages#contact"

    namespace :company do
      get "settings", to: "static_pages#setting"
      get "terms_and_condition", to: "static_pages#terms_and_condition"
      get "edit/:id", to: "users#edit"
      patch "edit/:id", to: "users#update"

      resources :shops
    end

    resources :gears
  end
end
