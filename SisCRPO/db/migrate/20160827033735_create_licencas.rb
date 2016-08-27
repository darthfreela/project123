class CreateLicencas < ActiveRecord::Migration
  def change
    create_table :licencas do |t|
      t.integer :idFunc
      t.string :nome
      t.string :tipo
      t.string :ordem
      t.date :dataInicial
      t.date :dataFinal
      t.integer :dias
      t.boolean :aprovado

      t.timestamps null: false
    end
  end
end
