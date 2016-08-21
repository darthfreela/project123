class AddImagemUsuarioToUser < ActiveRecord::Migration
  def change
    add_column :users, :imagemUsuario, :character
  end
end
