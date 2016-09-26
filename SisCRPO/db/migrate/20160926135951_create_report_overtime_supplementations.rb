class CreateReportOvertimeSupplementations < ActiveRecord::Migration
  def change
  	    create_table :report_overtime_supplementations do |t|
     	t.integer :id_cidade
     	t.integer :id_unidade
     	t.integer :qt_horas
     	t.date :dt_inicial
     	t.date :dt_final
     	t.timestamps null: false
    end
  end
end
