Rails.application.routes.draw do

get 'welcome/index'
resources :users
resources :tickets
resources :professions

root 'welcome#index'

resources :professionals



get "/signin", to: "sessions#new"
post "/signin", to: "sessions#create"

delete "/signout", to: "sessions#destroy", as: "signout"
root 'sessions#new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


# resources :users, :professions, :appointments, :professions
# root :to => 'welcome#index'

end
