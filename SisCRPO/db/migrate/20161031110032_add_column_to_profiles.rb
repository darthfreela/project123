class AddColumnToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :function_id, :integer
    add_reference :profiles, :functions, index: true, foreign_key: true
  end
end
