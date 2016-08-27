class CreateSolicitacaoFers < ActiveRecord::Migration
  def change
    create_table :solicitacao_fers do |t|
      t.integer :id_func
      t.date :data_inicial
      t.date :data_final
      t.boolean :aprovado

      t.timestamps null: false
    end
  end
end
