class AddCollumnsToReleaseVacations < ActiveRecord::Migration
  def change
    add_column :release_vacations, :user_id, :integer
  end
end
