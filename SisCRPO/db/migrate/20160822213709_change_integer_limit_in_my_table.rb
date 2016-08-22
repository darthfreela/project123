class ChangeIntegerLimitInMyTable < ActiveRecord::Migration
  def change
    change_column :users, :cpf, :integer, limit: 8
  end
end
