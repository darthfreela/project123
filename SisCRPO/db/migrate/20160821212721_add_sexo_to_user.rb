class AddSexoToUser < ActiveRecord::Migration
  def change
    add_column :users, :sexo, :character
  end
end
