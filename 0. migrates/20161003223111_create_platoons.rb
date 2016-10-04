class CreatePlatoons < ActiveRecord::Migration
  def change
    create_table :platoons do |t|
      t.string :name
      t.integer :city_id
      t.integer :gpm_id

      t.timestamps null: false
    end
  end
end
