class CreateInformatives < ActiveRecord::Migration
  def change
    create_table :informatives do |t|
      t.integer :text_informative_id
      t.date :date_begin
      t.date :date_end
      t.string :type

      t.timestamps null: false
    end
  end
end
