class CreateInstructionBulletins < ActiveRecord::Migration
  def change
    create_table :instruction_bulletins do |t|
      t.integer :user_id
      t.string :description
      t.date :date_begin
      t.date :date_end

      t.timestamps null: false
    end
  end
end
