class CreateGpms < ActiveRecord::Migration
  def change
    create_table :gpms do |t|
      t.string :initials
      t.string :name
      t.boolean :actived
      t.integer :city_id
      t.integer :companies_id
      t.integer :extra_hour_distributions_id

      t.timestamps null: false
    end
  end
end
