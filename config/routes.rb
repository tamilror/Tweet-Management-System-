Rails.application.routes.draw do
  devise_for :users
  resources :products

  devise_scope :user do
  authenticated :user do
   root 'products#index', as: :authenticated_root
 end
 unauthenticated do
   root 'devise/sessions#new', as: :unauthenticated_root
 end
end

  namespace :api do
    namespace :v1 do
      resources :tweets_management_apis, defaults: {format: :json}
    end
  end
root 'products#index'
end
