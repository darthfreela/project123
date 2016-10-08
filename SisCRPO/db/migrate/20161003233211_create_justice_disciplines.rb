class CreateJusticeDisciplines < ActiveRecord::Migration
  def change
    create_table :justice_disciplines do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
