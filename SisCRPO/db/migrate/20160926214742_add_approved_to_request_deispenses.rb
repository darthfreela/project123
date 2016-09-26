class AddApprovedToRequestDeispenses < ActiveRecord::Migration
  def change
    add_column :request_dispenses, :approved, :integer
  end
end
