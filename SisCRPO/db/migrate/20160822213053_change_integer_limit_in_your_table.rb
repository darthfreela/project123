class ChangeIntegerLimitInYourTable < ActiveRecord::Migration
  def change
        change_column :users, :idFuncao, :integer, limit: 8
        change_column :users, :idFunc, :integer, limit: 8
  end
end
