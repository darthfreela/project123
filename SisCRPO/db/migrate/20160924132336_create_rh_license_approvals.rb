class CreateRhLicenseApprovals < ActiveRecord::Migration
  def change
    create_table :rh_license_approvals do |t|
      t.integer :id_func
      t.string :nome_servidor
      t.string :posto_graduacao
      t.string :motivo
      t.string :funcao
      t.datetime :data_inicio
      t.datetime :data_termino

      t.timestamps null: false
    end
  end
end
