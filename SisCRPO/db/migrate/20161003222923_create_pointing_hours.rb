class CreatePointingHours < ActiveRecord::Migration
  def change
    create_table :pointing_hours do |t|
      t.integer :user_id
      t.date :date_hour_begin
      t.date :date_hour_end
      t.integer :status
      t.integer :service_type_id

      t.timestamps null: false
    end
  end
end
