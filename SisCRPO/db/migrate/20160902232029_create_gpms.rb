class CreateGpms < ActiveRecord::Migration
  def change
    create_table :gpms do |t|
      t.string :sigla
      t.string :nome
      t.string :cidade
      t.text :descricao

      t.timestamps null: false
    end
  end
end
