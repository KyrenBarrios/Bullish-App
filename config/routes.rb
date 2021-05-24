Rails.application.routes.draw do

  namespace :api do
    resources :stocks
    resources :comments
  end

  
end
