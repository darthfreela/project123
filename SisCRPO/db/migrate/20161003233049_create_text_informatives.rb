class CreateTextInformatives < ActiveRecord::Migration
  def change
    create_table :text_informatives do |t|
      t.string :description
      t.string :type

      t.timestamps null: false
    end
  end
end
