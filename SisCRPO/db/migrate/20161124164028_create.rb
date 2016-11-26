class Create < ActiveRecord::Migration
  def change
  	add_column :functions, :post_graduation_id, :integer
    add_foreign_key :functions , :post_graduations
  end
end
