class CreateTemporrayReplacementsMapOptions < ActiveRecord::Migration
  def change
    create_table :temporray_replacements_map_options do |t|
      t.string :director_tag
      t.string :opm_tag
      t.string :opm_telephone_tag
      t.string :cost_center_tag

      t.timestamps null: false
    end
  end
end
