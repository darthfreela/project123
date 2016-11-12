class CreateFkGado < ActiveRecord::Migration
  def change
     change_table :imported_files_users do |t|
        t.rename :imported_files_id, :imported_file_id

    end
    add_foreign_key :imported_files_users , :imported_files
  end
end
