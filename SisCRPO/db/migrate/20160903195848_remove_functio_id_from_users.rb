class RemoveFunctioIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :functions_id, :integer
  end
end
