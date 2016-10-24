class AddFirstAccessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_access, :boolean
  end
end
