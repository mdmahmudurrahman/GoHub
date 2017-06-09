Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  scope "(:locale)", locale: /en|da/ do
    root "static_pages#search_gear"

    get "about", to: "static_pages#about"
    get "contact", to: "static_pages#contact"

    scope module: "company" do
      get "company/settings", to: "static_pages#setting"
    end
  end
end
