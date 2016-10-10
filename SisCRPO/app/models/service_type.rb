class ServiceType < ActiveRecord::Base
  validates :nome, presence: true, length: {maximum: 80}
  validates :sigla, presence: true, length: {minimum:3, maximum: 6}
  validates :ativo, presence: true
  validates :idFuncao, numericality:true
  validates :idUniformes, numericality:true
  has_many :pointing_hours
end
