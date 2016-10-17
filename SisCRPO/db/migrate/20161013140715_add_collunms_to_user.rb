class AddCollunmsToUser < ActiveRecord::Migration
  def change  	                         
  	add_column :users, :current_profile, :integer
  	add_column :users, :image_path, :string
  	add_column :users, :cpf, :string
  	add_column :users, :email, :string
  	add_column :users, :profile_id, :integer
  end
end
