class CreateRequestDispenses < ActiveRecord::Migration
  def change
    create_table :request_dispenses do |t|
      t.string :solicitacao
      t.date :data_inicio
      t.date :data_fim
      t.integer :user_id

      t.timestamps null: false
    end
    add_foreign_key :request_dispenses, :users
  end
end
