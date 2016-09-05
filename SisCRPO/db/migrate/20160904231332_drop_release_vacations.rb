class DropReleaseVacations < ActiveRecord::Migration
  def change
        drop_table :release_vacations
  end
end
