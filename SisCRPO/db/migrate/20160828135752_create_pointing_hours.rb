class CreatePointingHours < ActiveRecord::Migration
  def change
    create_table :pointing_hours do |t|
      t.integer :id_func
      t.date :data_inicio
      t.date :hora_inicio
      t.date :data_fim
      t.date :hora_fim

      t.timestamps null: false
    end
  end
end
