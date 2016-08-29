class CreatePelotaos < ActiveRecord::Migration
  def change
    create_table :pelotaos do |t|
      t.string :nome
      t.string :cidade

      t.timestamps null: false
    end
  end
end
