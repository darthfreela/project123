class CreatePostograduacaos < ActiveRecord::Migration
  def change
    create_table :postograduacaos do |t|

      t.string :sigla
      t.string :nomePostoGraduacao
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
