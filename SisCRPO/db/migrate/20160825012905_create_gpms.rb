class CreateGpms < ActiveRecord::Migration
  def change
    create_table :gpms do |t|
      t.integer :idOpm
      t.string :sigla
      t.string :nome
      t.integer :cidade
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
