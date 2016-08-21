class AddEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :character
  end
end
