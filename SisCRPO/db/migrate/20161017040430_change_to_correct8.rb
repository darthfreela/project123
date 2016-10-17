class ChangeToCorrect8 < ActiveRecord::Migration
  def change
    change_table :approval_solicitations do |t|
      t.rename :request_solicitation_id, :solicitation_id
    end
  end
end
