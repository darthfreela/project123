class Create2 < ActiveRecord::Migration
  def change
  	add_column :opms, :telephone, :string
  	add_column :users, :telephone, :string
  	add_column :trainees, :telephone, :string
    add_column :opms, :center_cost_number, :integer
  end
end
