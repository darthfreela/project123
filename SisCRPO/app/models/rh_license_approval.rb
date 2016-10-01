class RhLicenseApproval < ActiveRecord::Base
    validates :id_func, :nome_servidor, :posto_graduacao, :motivo, :funcao, :data_inicio, :data_termino, :status, presence: true
    validates :id_func,numericality: true
end
