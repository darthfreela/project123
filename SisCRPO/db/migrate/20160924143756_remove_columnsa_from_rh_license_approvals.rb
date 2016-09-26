class RemoveColumnsaFromRhLicenseApprovals < ActiveRecord::Migration
  def change
    remove_column :rh_license_approvals, :data_termino, :datetime
  end
end
