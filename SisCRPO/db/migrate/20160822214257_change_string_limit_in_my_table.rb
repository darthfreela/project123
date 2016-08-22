class ChangeStringLimitInMyTable < ActiveRecord::Migration
  def change
    change_column :users, :nomeGuerra, :string, limit: 256
    change_column :users, :imagemUsuario, :string, limit: 256
    change_column :users, :email, :string, limit: 256
    change_column :users, :sexo, :string, limit: 256
  end
end
