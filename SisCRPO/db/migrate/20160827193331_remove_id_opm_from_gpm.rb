class RemoveIdOpmFromGpm < ActiveRecord::Migration
  def change
    remove_column :gpms, :idOpm, :integer
  end
end
