class AddColumnsToSubstituicaoTemporaria < ActiveRecord::Migration
  def change
    add_column :substituicao_temporaria, :motivoIndisponibilidade, :string
    add_column :substituicao_temporaria, :data1, :date
    add_column :substituicao_temporaria, :data2, :date
    add_column :substituicao_temporaria, :numeroBoletim, :integer
  end
end
