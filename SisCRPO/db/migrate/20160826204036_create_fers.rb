class CreateFers < ActiveRecord::Migration
  def change
    create_table :fers do |t|
      t.integer :idFunc
      t.date :dataInicial
      t.date :dataFinal
      t.boolean :aprovado

      t.timestamps null: false
    end
  end
end
