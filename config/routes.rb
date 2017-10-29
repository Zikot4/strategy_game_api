Rails.application.routes.draw do
  scope :admin do
    devise_for :admins
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :home, only: %i[index]
  root to: 'web/home#index'

  mount_devise_token_auth_for 'User', at: 'auth',
                                      controllers: {
                                        registrations: 'users/registrations'
                                      }

  namespace :api do
    namespace :v1 do
      resources :lobbies, only: %i[index create]
    end
  end
end
