class RemoveNumeroServidorFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :numero_servidor, :number
  end
end
