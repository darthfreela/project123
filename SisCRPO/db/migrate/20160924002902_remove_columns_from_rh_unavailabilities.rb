class RemoveColumnsFromRhUnavailabilities < ActiveRecord::Migrationadd_column :users, :postograduacao_id, :integer
    #add_foreign_key :users, :postograduacaos
  def change
    remove_column :rh_unavailabilities, :string, :string
  end
end
