Rails.application.routes.draw do

  root to:'businesses#index'
  namespace :api do
    namespace :v1 do
      resources :businesses
    end
  end

end
