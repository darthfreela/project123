class CreateInformativeTextDailyBulletins < ActiveRecord::Migration
  def change
    create_table :informative_text_daily_bulletins do |t|
      t.string :type_info
      t.string :description

      t.timestamps null: false
    end
  end
end
