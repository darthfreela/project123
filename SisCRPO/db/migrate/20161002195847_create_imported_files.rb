class CreateImportedFiles < ActiveRecord::Migration
  def change
    create_table :imported_files do |t|
      t.string :imported_file
      t.string :generated_file
      t.string :log
      t.integer :user_id

      t.timestamps null: false
    end
    add_foreign_key :imported_files, :users
  end
end
