class CreateTemporaryReplacementsMaps < ActiveRecord::Migration
  def change
    create_table :temporary_replacements_maps do |t|
      t.string :title
      t.string :path

      t.timestamps null: false
    end
  end
end
