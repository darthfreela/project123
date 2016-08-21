class AddIdFuncToUser < ActiveRecord::Migration
  def change
    add_column :users, :idFunc, :integer
  end
end
