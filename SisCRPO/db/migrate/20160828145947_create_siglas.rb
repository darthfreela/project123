class CreateSiglas < ActiveRecord::Migration
  def change
    drop_table :siglas
    create_table :siglas do |t|
      t.string :sigla
      t.string :nome

      t.timestamps null: false
    end
  end
end
