class ChangeTableToCorrect5 < ActiveRecord::Migration
  def change
    add_column :trainees, :date_final_contract, :date
  end
end
