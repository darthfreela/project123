class CreateUniforms < ActiveRecord::Migration
  def change
    create_table :uniforms do |t|
      t.string :sigla
      t.string :uniforme
      t.string :descricao
      t.date :data_alteracao

      t.timestamps null: false
    end
  end
end
