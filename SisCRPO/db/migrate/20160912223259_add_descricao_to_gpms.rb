class AddDescricaoToGpms < ActiveRecord::Migration
  def change
    add_column :gpms, :descricao, :string
  end
end
