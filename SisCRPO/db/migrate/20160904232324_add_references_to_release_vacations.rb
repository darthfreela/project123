class AddReferencesToReleaseVacations < ActiveRecord::Migration
  def change
    add_foreign_key :release_vacations, :users
  end
end
