class RemoverCampos < ActiveRecord::Migration
  def change
  	remove_column :imported_files, :id_user, :integer
  	remove_column :imported_files, :nome, :string
  	remove_column :imported_files, :posto, :string
  end
end
