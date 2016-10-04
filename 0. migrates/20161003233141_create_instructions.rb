class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :_bulletin
      t.string :description
      t.date :date_begin
      t.date :date_end

      t.timestamps null: false
    end
  end
end
