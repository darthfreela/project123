class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :endereco, :string
    add_column :users, :bairro, :string
    add_column :users, :cidade, :string
    add_column :users, :estado, :string
    add_column :users, :cep, :string
  end
end
