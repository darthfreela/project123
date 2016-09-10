class RemoveUsersIdFromUsersFunctions < ActiveRecord::Migration
  def change
    remove_column :users_functions, :users_id, :integer
  end
end
