class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :initials
      t.string :name
      t.integer :vacancies
      t.boolean :actived

      t.timestamps null: false
    end
  end
end
