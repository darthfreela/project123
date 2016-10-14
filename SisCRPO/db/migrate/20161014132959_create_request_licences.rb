class CreateRequestLicences < ActiveRecord::Migration
  def change
    create_table :request_licences do |t|
      t.string :type
      t.date :date_begin
      t.date :date_end
      t.integer :licence_days
      t.string :status
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
