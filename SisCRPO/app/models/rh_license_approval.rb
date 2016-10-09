class RhLicenseApproval < ActiveRecord::Base
    validates :id_func, :nome_servidor, :motivo, :funcao, :data_inicio, :data_termino, :status, presence: true
    validates :id_func,numericality: true
end
