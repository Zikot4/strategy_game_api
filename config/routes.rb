Rails.application.routes.draw do

  root to: "home#index"

  mount_devise_token_auth_for 'User', at: 'auth',
                                      controllers: {
                                        registrations: 'users/registrations'
                                      }
end
