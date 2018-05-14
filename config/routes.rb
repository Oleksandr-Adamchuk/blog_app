Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :categories, except: %i[new edit]
      resources :posts
    end
  end
end
