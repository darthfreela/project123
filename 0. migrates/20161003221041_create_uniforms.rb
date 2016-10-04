class CreateUniforms < ActiveRecord::Migration
  def change
    create_table :uniforms do |t|
      t.string :initials
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
