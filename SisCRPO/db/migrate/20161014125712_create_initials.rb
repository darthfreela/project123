class CreateInitials < ActiveRecord::Migration
  def change
    create_table :initials do |t|
      t.string :initial
      t.string :name

      t.timestamps null: false
    end
  end
end
