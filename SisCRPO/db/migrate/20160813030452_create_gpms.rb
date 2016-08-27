class CreateGpms < ActiveRecord::Migration
  def change
    create_table :gpms, {:id => false} do |t|
        t.integer :id
        t.integer :id_opm
        t.string :sigla
        t.string :nome
        t.integer :id_endereco
        t.timestamps :data_ultima_alteracao
        t.boolean :ativo

      t.timestamps null: false
    end
  end
end
