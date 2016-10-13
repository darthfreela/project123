class AddForeignKeyToTemporaryReplacements < ActiveRecord::Migration
  def change
    add_foreign_key :temporary_replacements, :users, column: :substitute_id_func
  end
end
