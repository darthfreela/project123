class AddForeinkeyUsersToLicencas < ActiveRecord::Migration
  def change
    add_column :licencas, :user_id, :integer
    add_foreign_key :licencas, :users
  end
end
