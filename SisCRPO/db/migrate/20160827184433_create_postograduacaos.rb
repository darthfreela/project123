class CreatePostograduacaos < ActiveRecord::Migration
  def change
    create_table :postograduacaos do |t|
<<<<<<< HEAD:SisCRPO/db/migrate/20160827184433_create_postograduacaos.rb
=======

>>>>>>> 7b523d7f43c520be7a51419ddeb19c487da37432:SisCRPO/db/migrate/20160827121850_create_postograduacaos.rb
      t.string :sigla
      t.string :nomePostoGraduacao
      t.boolean :ativo

      t.timestamps null: false
    end
  end
end
