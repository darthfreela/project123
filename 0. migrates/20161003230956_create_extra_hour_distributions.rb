class CreateExtraHourDistributions < ActiveRecord::Migration
  def change
    create_table :extra_hour_distributions do |t|
      t.integer :city_id
      t.integer :how_many_hours
      t.date :date_begin
      t.date :date_end
      t.integer :gpm_id

      t.timestamps null: false
    end
  end
end
