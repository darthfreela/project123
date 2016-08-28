class Company < ActiveRecord::Base
	validates :nome, presence: true
	validates :ativo, presence: true
	validates :cidade, presence: true
	validates :unidade, presence: true
	validates :numero_servidor, presence: true
	validates_uniqueness_of :nome, message: "Já Cadastrado na base"
	validates_numericality_of :numero_servidor , message: "O campo número de servidor deve ser numérico"
end
