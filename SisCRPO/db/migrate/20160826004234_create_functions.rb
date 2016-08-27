class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :sigla
      t.string :funcao
      t.integer :vagas
      t.date :data_alteracao
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
