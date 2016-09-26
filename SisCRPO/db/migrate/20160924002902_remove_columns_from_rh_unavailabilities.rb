class RemoveColumnsFromRhUnavailabilities < ActiveRecord::Migration
  def change
    remove_column :rh_unavailabilities, :string, :string
  end
end
