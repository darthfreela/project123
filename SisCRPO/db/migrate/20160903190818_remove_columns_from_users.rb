class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :idFuncao, :integer
  end
end
