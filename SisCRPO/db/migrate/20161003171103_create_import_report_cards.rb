class CreateImportReportCards < ActiveRecord::Migration
  def change
    create_table :import_report_cards do |t|
      t.string :id_user
      t.string :nome
      t.string :posto

      t.timestamps null: false
    end
  end
end
