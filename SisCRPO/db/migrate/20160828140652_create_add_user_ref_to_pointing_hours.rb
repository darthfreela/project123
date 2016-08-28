class CreateAddUserRefToPointingHours < ActiveRecord::Migration
  def change
    create_table :add_user_ref_to_pointing_hours do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
