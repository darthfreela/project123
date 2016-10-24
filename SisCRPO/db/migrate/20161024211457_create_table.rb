class CreateTable < ActiveRecord::Migration
  def change
    remove_column :imported_files, :graduation, :string
	remove_column :imported_files, :bulletin_name, :string
	remove_column :imported_files, :id_func, :integer
	remove_column :imported_files, :opm, :string
	remove_column :imported_files, :name_func, :string

    create_table :imported_files_users do |t|
      	t.integer :id_user
      	t.integer :id_func_temp
      	t.integer :user_id
      	t.integer :id_imported_file
      	t.timestamps null: false
    end

  end
end

