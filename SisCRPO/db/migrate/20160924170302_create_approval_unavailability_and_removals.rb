class CreateApprovalUnavailabilityAndRemovals < ActiveRecord::Migration
  def change
    create_table :approval_unavailability_and_removals do |t|
      t.references :users
      t.references :licencas

      t.timestamps null: false
    end
  end
end
