class AddCollunmsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :image_path, :string
  	add_column :users, :cpf, :string
  	add_column :users, :email, :string
  end
end
