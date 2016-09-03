class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :idUsuarioFuncao, :integer
  end
end
