Rails.application.routes.draw do

resources :users
resources :tickets
resources :professions
root 'tickets#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


# resources :users, :professions, :appointments, :professions
# root :to => 'welcome#index'

end
