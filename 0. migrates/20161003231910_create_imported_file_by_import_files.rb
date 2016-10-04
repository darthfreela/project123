class CreateImportedFileByImportFiles < ActiveRecord::Migration
  def change
    create_table :imported_file_by_import_files do |t|
      t.integer :user_id
      t.string :imported_file_path

      t.timestamps null: false
    end
  end
end
