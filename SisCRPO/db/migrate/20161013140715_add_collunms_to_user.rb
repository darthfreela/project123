class AddCollunmsToUser < ActiveRecord::Migration
  def change  	                         
  	add_column :users, :current_profile, :integer
  end
end
