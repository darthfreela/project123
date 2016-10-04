class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :initials
      t.string :name
      t.integer :function_id
      t.integer :uniform_id
      t.boolean :actived

      t.timestamps null: false
    end
  end
end
