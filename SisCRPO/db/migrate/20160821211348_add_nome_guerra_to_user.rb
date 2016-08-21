class AddNomeGuerraToUser < ActiveRecord::Migration
  def change
    add_column :users, :nomeGuerra, :character
  end
end
