class TemporaryReplacement < ActiveRecord::Base
    #validates :idFuncOcupante, numericality: true, numericality: true
    #validates :nomeOcupante, presence: true, length: {maximum: 80}
    #validates :idGraduacaoOcupante, presence:true, numericality: true
    #validates :idFuncaoOcupante, presence:true, numericality: true


    #validates :idFuncSubstituto, presence:true, numericality: true
    #validates :nomeSubstituto, presence: true, length: {maximum: 80}
    #validates :idFuncaoSubstituto, presence:true, numericality: true
    #validates :idGraduacaoSubstituto, presence:true, numericality: true


    #validates :motivoIndisponibilidade, presence:true, length: {maximum: 255}
    #validates :idBoletim, presence:true, numericality: true

    has_many  :users, :foreign_key => "substitute_id_func", :class_name => "TemporaryReplacement"
end
