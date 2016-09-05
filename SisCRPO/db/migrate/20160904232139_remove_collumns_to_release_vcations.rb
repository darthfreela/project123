class RemoveCollumnsToReleaseVcations < ActiveRecord::Migration
  def change
    remove_reference :release_vacations, :users, index: true
  end
end
