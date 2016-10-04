class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :neighborhood, :string
    add_column :users, :city_id, :integer
    add_column :users, :state, :string
    add_column :users, :zip_code, :string
    add_column :users, :actived, :boolean
    add_column :users, :id_func, :integer
    add_column :users, :war_name, :string
    add_column :users, :gender, :string
    add_column :users, :birth, :string
    add_column :users, :post_graduation_id, :integer
    add_column :users, :profile_id, :string
  end
end
