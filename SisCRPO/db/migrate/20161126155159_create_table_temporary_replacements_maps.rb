class CreateTableTemporaryReplacementsMaps < ActiveRecord::Migration
  def change
    create_table :table_temporary_replacements_maps do |t|
      t.string :title
      t.string :path
    end
  end
end
