class CreateOpms < ActiveRecord::Migration
  def change
    create_table :opms do |t|
      t.string :initials
      t.string :name
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
