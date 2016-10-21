class RenomearCampo < ActiveRecord::Migration
  def change
  	change_table :text_informatives do |t|
      t.rename :type, :type_informative
    end
  end
end
