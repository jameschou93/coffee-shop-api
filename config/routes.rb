Rails.application.routes.draw do

  root to:'businesses#index'
  namespace :api do
    namespace :v1 do
      get '/businesses', to: 'businesses#index'
    end
  end

end
