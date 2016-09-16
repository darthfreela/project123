class RemovePatenteFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :patente, :string
  end
end
