class AddColumnsToImportedFilesUsers < ActiveRecord::Migration
  def change
    add_column :imported_files_users, :imported_files_id, :integer
    #add_foreign_key :imported_files_users , :imported_files
  end

end
