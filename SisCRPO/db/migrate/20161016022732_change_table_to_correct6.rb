class ChangeTableToCorrect6 < ActiveRecord::Migration
  def change
    rename_table :request_solicitations, :solicitations
  end
end
