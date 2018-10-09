class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true # Nombre de usuario no nulo y único
      t.string :email, null: false, index: true, unique: true # Correo electrónico no nulo, índice y único
      t.string :password_digest # Almacena la contraseña, la cuál fue previamente cifrada

      t.timestamps
    end
  end
end
