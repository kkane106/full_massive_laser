Rails.application.routes.draw do

get 'welcome/index'
resources :users
resources :tickets
resources :professions


resources :professionals



get "/signin", to: "sessions#new"
post "/signin", to: "sessions#create"

delete "/signout", to: "sessions#destroy", as: "signout"
root 'welcome#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


# resources :users, :professions, :appointments, :professions
# root :to => 'welcome#index'

end
