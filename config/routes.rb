Rails.application.routes.draw do
  root "main#index"
  get "about-us" => "about#index", as: :about

  get "sign-up" => "registrations#new"
  post "sign-up" => "registrations#create"

  get "sign-in" => "sessions#new"
  post "sign-in" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get "password" => "passwords#edit", as: :edit_password
  patch "password" => "passwords#update"

  get "password/reset" => "password_resets#new"
  post "password/reset" => "password_resets#create"
  get "password/reset/edit" => "password_resets#edit"
  patch "password/reset/edit" => "password_resets#update"
end
