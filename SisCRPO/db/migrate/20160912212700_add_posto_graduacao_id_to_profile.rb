class AddPostoGraduacaoIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :posto_graduacao_id, :integer
  end
end
