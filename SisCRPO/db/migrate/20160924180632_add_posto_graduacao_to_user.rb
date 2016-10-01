class AddPostoGraduacaoToUser < ActiveRecord::Migration
  def change
    add_column :users, :postograduacao_id, :integer
    add_foreign_key :users, :postograduacaos
  end
end
