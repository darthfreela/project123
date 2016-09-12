class RemovePostoGraduacaoIdFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :posto_graduacao_id, :integer
  end
end
