class CreateDistribuicaoHorasExtras < ActiveRecord::Migration
  def change
    create_table :distribuicao_horas_extras do |t|
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
