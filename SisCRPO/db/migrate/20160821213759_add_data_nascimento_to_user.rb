class AddDataNascimentoToUser < ActiveRecord::Migration
  def change
    add_column :users, :dataNascimento, :date
  end
end
