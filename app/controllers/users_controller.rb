class UsersController < ApplicationController
    # Usar Knock tpara segurarse que el usuario está autenticado (se usa para el acceso al método index)
	before_action :authenticate_user, only: [:index]
	  
	# Indica si el usuario actual ha sido autenticado
	def index
	  render json: {status: 200, msg: 'Autenticado'}
	end
	
	# Parámetros
	def user_params
	  params.require(:user).permit(:username, :email, :password)
	end

	# Método para crear un nuevo usuario con parámetros seguros
	def create
	  user = User.new(user_params)
	  if user.save
	    render json: {status: 200, msg: 'El usuario ha sido creado'}
	  else
	  	render json: {status: 400, msg: 'El usuario NO ha sido creado'}
	  end
	end
end
