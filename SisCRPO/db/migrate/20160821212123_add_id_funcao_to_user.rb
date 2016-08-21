class AddIdFuncaoToUser < ActiveRecord::Migration
  def change
    add_column :users, :idFuncao, :integer
  end
end
