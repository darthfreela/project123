class AddOpmToGpms < ActiveRecord::Migration
  def change
    add_reference :gpms, :opm, index: true, foreign_key: true
  end
end
