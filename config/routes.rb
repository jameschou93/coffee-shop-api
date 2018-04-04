Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get '/businesses', to: 'businesses#index'
    end
  end
  
end
