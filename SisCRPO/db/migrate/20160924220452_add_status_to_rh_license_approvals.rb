class AddStatusToRhLicenseApprovals < ActiveRecord::Migration
  def change
    add_column :rh_license_approvals, :status, :boolean
  end
end
