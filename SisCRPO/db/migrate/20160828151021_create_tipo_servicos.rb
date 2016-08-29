class CreateTipoServicos < ActiveRecord::Migration
  def change
<<<<<<< HEAD

=======
    
>>>>>>> f31588a09042a1c5cfa63174f9943ecc9f50b215
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
