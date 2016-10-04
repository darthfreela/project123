class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :city_id
      t.boolean :actived
      t.integer :opm_id

      t.timestamps null: false
    end
  end
end
