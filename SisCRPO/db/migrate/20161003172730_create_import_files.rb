class CreateImportFiles < ActiveRecord::Migration
  def change
    create_table :import_files do |t|
      t.string :id_user
      t.string :nome
      t.string :posto

      t.timestamps null: false
    end
  end
end
