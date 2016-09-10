class CreateTipoServicos < ActiveRecord::Migration
  def change
    create_table :tipo_servicos do |t|
      t.string :sigla
      t.string :nome
      t.integer :idFuncao
      t.integer :idUniformes
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
