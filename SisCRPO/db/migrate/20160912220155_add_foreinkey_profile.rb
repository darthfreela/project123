class AddForeinkeyProfile < ActiveRecord::Migration
  def change
  	add_column :profiles, :postograduacao_id, :integer
    add_foreign_key :profiles, :postograduacaos
  end
end
