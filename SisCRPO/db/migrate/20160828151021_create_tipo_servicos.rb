class CreateTipoServicos < ActiveRecord::Migration
  def change
<<<<<<< HEAD

=======
    
>>>>>>> 660605ea3a4b9d436da860d99e7eb86fdf789be4
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
