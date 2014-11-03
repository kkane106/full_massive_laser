Rails.application.routes.draw do

	get 'welcome/index'
	resources :users
	resources :tickets
	resources :professions


	resources :professionals

	get 'auth/:provider/callback', to: 'users#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'users#destroy', as: 'signout'
  put 'tickets/complete/:id', to: 'tickets#complete'


root 'welcome#index'

end
