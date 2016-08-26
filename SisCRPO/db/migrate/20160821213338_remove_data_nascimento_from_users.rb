class RemoveDataNascimentoFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :dataNascimento, :date
  end
end