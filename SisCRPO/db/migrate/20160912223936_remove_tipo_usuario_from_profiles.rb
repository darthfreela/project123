class RemoveTipoUsuarioFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :tipo_usuario, :string
  end
end
