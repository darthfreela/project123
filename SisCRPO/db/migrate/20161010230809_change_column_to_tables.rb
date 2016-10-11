class ChangeColumnToTables < ActiveRecord::Migration
  def change
    change_table :gpms do |t|
      t.rename :companies_id, :platoon_id
    end
    remove_column :gpms, :extra_hour_distributions_id, :integer
  end
end
