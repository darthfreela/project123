class AddColumnToSolicitations < ActiveRecord::Migration
  def change
    add_column :solicitations, :status, :integer
  end
end
