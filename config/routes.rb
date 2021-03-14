Rails.application.routes.draw do
  root "main#index"
  get "about-us" => "about#index", as: :about
end
