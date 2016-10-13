class ChangeTableToCorrect2 < ActiveRecord::Migration
  def change
    rename_table :request_solicitationx, :request_solicitations
  end
end
