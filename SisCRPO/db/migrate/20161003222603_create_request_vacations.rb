class CreateRequestVacations < ActiveRecord::Migration
  def change
    create_table :request_vacations do |t|
      t.date :date_begin
      t.date :date_end
      t.string :description
      t.integer :status
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
