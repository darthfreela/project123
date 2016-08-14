class CreateOpms < ActiveRecord::Migration
  def change
    create_table :opms do |t|
      t.string :sigla
      t.string :nome
      t.integer :cidade
      t.text :descricao

      t.timestamps null: false
    end
  end
end
