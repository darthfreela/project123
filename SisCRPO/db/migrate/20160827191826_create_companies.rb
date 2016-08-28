class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :nome
      t.string :cidade
      t.string :unidade
      t.integer :numero_servidor
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
