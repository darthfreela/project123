class CreateDisthoraextras < ActiveRecord::Migration
  def change
    create_table :disthoraextras do |t|
      t.integer :idUnidade
      t.string :unidade
      t.string :cidade
      t.decimal :numeroDeHoras
      t.date :dataInicio
      t.date :dataTermino

      t.timestamps null: false
    end
  end
end
