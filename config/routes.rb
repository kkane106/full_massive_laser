Rails.application.routes.draw do

  get 'home/show'

	get 'welcome/index'
	resources :users
	resources :tickets
	resources :professions


	resources :professionals

	 get 'auth/:provider/callback', to: 'users#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'users#destroy', as: 'signout'



root 'welcome#index'

end
