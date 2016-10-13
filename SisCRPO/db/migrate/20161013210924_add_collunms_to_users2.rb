class AddCollunmsToUsers2 < ActiveRecord::Migration
  def change
  	add_column :users, :function_id, :integer
  	add_column :users, :platoon_id, :integer
  end
end
