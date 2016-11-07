class AddTableNotification < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.string :description
      t.string :title_notification
      t.string :url_description
      t.datetime :date_expiration
      t.integer :status

      t.timestamps null: false
    end
  end
end
