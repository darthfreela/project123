class AddGpmIdToPelotaos < ActiveRecord::Migration
  def change
    add_column :pelotaos, :gpm_id, :integer
  end
end
