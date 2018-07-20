Rails.application.routes.draw do

  devise_for :users, only:[]
  root to:'businesses#index'
  namespace :api do
    namespace :v1 do
      resources :businesses
      resource :login, only: [:create], controller: :sessions
    end
  end

end
