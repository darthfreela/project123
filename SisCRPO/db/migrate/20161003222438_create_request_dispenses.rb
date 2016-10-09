class CreateRequestDispenses < ActiveRecord::Migration
  def change
    create_table :request_dispenses do |t|
      t.string :description
      t.date :date_begin
      t.date :date_end
      t.integer :user_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
