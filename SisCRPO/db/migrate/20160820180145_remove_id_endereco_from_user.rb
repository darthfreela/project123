class RemoveIdEnderecoFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :idEndereco, :integer
  end
end
