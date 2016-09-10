class AddCollumnsToTemporaryReplacements < ActiveRecord::Migration
  def change
    add_column :temporary_replacements, :nomeOcupante, :string
    add_column :temporary_replacements, :idGraduacaoOcupante, :integer
    add_column :temporary_replacements, :idFuncaoOcupante, :integer
    add_column :temporary_replacements, :nomeSubstituto, :string
    add_column :temporary_replacements, :idFuncaoSubstituto, :integer
    add_column :temporary_replacements, :idGraduacaoSubstituto, :integer
  end
end
