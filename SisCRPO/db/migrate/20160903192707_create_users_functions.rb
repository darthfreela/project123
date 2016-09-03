class CreateUsersFunctions < ActiveRecord::Migration
  def change
    create_table :users_functions do |t|
      t.integer :users_id
      t.integer :functions_id

      t.timestamps null: false
    end
  end
end
