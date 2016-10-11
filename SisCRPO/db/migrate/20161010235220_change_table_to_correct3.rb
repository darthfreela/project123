class ChangeTableToCorrect3 < ActiveRecord::Migration
  def change
    change_table :approval_solicitations do |t|
      t.rename :request_licence_id, :request_solicitation_id
    end
  end
end
