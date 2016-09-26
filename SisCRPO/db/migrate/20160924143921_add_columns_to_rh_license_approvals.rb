class AddColumnsToRhLicenseApprovals < ActiveRecord::Migration
  def change
    add_column :rh_license_approvals, :data_inicio, :date
    add_column :rh_license_approvals, :data_termino, :date
  end
end
