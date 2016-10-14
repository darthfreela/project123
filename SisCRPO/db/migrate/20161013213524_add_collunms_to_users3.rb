class AddCollunmsToUsers3 < ActiveRecord::Migration
  def change
  	add_foreing_key :users, :functions
  	add_foreign_key :users, :plattons
  	add_foreign_key :users, :profiles
  	add_foreign_key :users, :post_graduations
  	add_foreign_key :users, :cities
  end
end
