class ChangeTableToCorrect7 < ActiveRecord::Migration
  def change
    add_column :solicitations, :type_license, :integer
    add_column :solicitations, :license_days, :integer
  end
end
