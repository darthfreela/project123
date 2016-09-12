class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nome
      t.string :patente
      t.string :tipo_usuario

      t.timestamps null: false
    end
  end
end
