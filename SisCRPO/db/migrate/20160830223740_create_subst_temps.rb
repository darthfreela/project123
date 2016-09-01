class CreateSubstTemps < ActiveRecord::Migration
  def change
    create_table :subst_temps do |t|
      t.integer :idFuncSubstituido
      t.integer :idFuncSubstituto
      t.string :motivIndisponibilidade
      t.date :dataInicial
      t.date :dataFinal
      t.integer :nrBoletim

      t.timestamps null: false
    end
  end
end
