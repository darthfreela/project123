class CreateReleaseVacations < ActiveRecord::Migration
  def change
    create_table :release_vacations do |t|
      t.references :users, index: true
      t.date :inicial_date
      t.date :final_date
      t.boolean :approved

      t.timestamps null: false
    end
  end
end
