class RemoveDataNascimentoFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :dataNscimento, :date
  end
end
