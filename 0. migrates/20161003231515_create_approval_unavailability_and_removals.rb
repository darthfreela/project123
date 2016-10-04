class CreateApprovalUnavailabilityAndRemovals < ActiveRecord::Migration
  def change
    create_table :approval_unavailability_and_removals do |t|
      t.integer :user_id
      t.integer :request_licence_id

      t.timestamps null: false
    end
  end
end
