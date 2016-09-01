class CreateTipoServicos < ActiveRecord::Migration
  def change
<<<<<<< HEAD

=======
    
<<<<<<< HEAD
>>>>>>> f31588a09042a1c5cfa63174f9943ecc9f50b215
=======
>>>>>>> 660605ea3a4b9d436da860d99e7eb86fdf789be4
>>>>>>> 9d165fa412a9aef49986340e02ed8c6c8c67af82
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
