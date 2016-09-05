class AddColumnsToGpms < ActiveRecord::Migration
  def change
    add_column :gpms, :cidade, :string
    add_column :gpms, :descricao, :text
  end
end
