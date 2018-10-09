Rails.application.routes.draw do
	# RUtas de Home Controller
	root   'home#index'
	get    'auth'            => 'home#auth'
	  
	# Obtener el token de inicio de sesión desde Knock
	post   'user_token'      => 'user_token#create'
	
	# Acciones de User
	get    '/users'          => 'users#index'
	post   '/users/create'   => 'users#create'
end
