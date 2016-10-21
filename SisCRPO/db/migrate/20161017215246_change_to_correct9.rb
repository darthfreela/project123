class ChangeToCorrect9 < ActiveRecord::Migration
  def change
    add_column :approval_solicitations, :manager_function_id, :integer
    add_column :approval_solicitations, :status, :integer
    remove_column :solicitations, :status, :integer
  end
end
