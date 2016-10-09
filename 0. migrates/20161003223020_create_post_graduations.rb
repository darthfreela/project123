class CreatePostGraduations < ActiveRecord::Migration
  def change
    create_table :post_graduations do |t|
      t.string :initials
      t.string :name
      t.boolean :active

      t.timestamps null: false
    end
  end
end
