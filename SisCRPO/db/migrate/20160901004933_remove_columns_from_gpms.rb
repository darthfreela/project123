class RemoveColumnsFromGpms < ActiveRecord::Migration
  def change
    remove_column :gpms, :id_opm, :integer
    remove_column :gpms, :id_endereco, :integer
    remove_column :gpms, :opm_id, :integer
  end
end
