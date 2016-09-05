class AddVigenciaControtaToEstagiarios < ActiveRecord::Migration
  def change
    add_column :estagiarios, :vigencia_contrato, :date
  end
end
