class CreateDailyBulletins < ActiveRecord::Migration
  def change
    create_table :daily_bulletins do |t|
      t.integer :user_id
      t.integer :informative_id
      t.integer :justice_discipline_id
      t.integer :instruction_bulletin_id

      t.timestamps null: false
    end
  end
end
