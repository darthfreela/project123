class AddColumnsToRequestDispenses < ActiveRecord::Migration
  def change
    add_column :request_dispenses, :aprovado, :boolean
    add_column :request_dispenses, :descricao_superior, :string
  end
end
