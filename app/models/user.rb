class User < ApplicationRecord
    # Indica que se autenticará con una contraseña segura
  	has_secure_password
  
  	# Validaciones básicas para la contraseña.
 	validates_length_of :password, maximum: 72, minimum: 6, allow_nil: false, allow_blank: false

	# Validaciones para garantizar la presencia del correo electŕonico y el nombre de usuario y que sean únicos
	validates_presence_of     :email
	validates_presence_of     :username
	validates_uniqueness_of   :email
	validates_uniqueness_of   :username
end
