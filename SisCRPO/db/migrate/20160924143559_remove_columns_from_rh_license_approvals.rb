class RemoveColumnsFromRhLicenseApprovals < ActiveRecord::Migration
  def change
    remove_column :rh_license_approvals, :data_inicio, :datetime
  end
end
