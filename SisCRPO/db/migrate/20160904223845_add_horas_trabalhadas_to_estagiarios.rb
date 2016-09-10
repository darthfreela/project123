class AddHorasTrabalhadasToEstagiarios < ActiveRecord::Migration
  def change
    add_column :estagiarios, :horas_trabalhadas, :float
  end
end
