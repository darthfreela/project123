class CreateTemporaryReplacements < ActiveRecord::Migration
  def change
    create_table :temporary_replacements do |t|
      t.integer :idFuncOcupante
      t.integer :idFuncSubstituto
      t.string :situacao
      t.string :motivoIndisponibilidade
      t.integer :idSoliDispAfastamento
      t.date :dataAssuncao
      t.date :dataDispensa
      t.integer :idBoletim

      t.timestamps null: false
    end
  end
end
