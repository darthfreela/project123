class RemoveColumnsFromPostoGraduacao < ActiveRecord::Migration
  def change
    remove_column :postograduacaos, :id, :integer
  end
end
