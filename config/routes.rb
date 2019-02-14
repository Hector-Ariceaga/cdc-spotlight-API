Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles, except: [:new, :edit] do
        resources :comments, only: [:index, :create, :destroy]
      end
    end
  end
end

