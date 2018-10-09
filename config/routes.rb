Rails.application.routes.draw do
    # Home controller routes.
	  root   'home#index'
	  get    'auth'            => 'home#auth'
	  
	  # Get login token from Knock
	  post   'user_token'      => 'user_token#create'
	  
	  # User actions
	  get    '/users'          => 'users#index'
	  post   '/users/create'   => 'users#create'
end
