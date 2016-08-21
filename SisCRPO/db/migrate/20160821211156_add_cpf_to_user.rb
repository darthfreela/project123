class AddCpfToUser < ActiveRecord::Migration
  def change
    add_column :users, :cpf, :integer
  end
end
