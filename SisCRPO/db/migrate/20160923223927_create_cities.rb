class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :nome
      t.string :uf

      t.timestamps null: false
    end
  end
end
