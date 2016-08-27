class CreateEstagiarios < ActiveRecord::Migration
  def change
    create_table :estagiarios do |t|
      t.string :nome
      t.string :cpf
      t.string :sexo
      t.date :data_nascimento
      t.string :semestre
      t.string :endereco
      t.string :email
      t.string :agcc
      t.integer :dias_trabalhados
      t.integer :usuario_ultima_alteracao
      t.integer :vale_transporte

      t.timestamps null: false
    end
  end
end
