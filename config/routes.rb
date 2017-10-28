Rails.application.routes.draw do

  resources :home, only: %i[index]
  root to: 'web/home#index'

  mount_devise_token_auth_for 'User', at: 'auth',
                                      controllers: {
                                        registrations: 'users/registrations'
                                      }
end
