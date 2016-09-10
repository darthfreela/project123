class AddComfirmacaoToPointingHours < ActiveRecord::Migration
  def change
    add_column :pointing_hours, :comfirmacao, :boolean
  end
end
