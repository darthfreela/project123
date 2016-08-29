class Company < ActiveRecord::Base
	validates :nome, presence: true
	validates :ativo, presence: true
	validates :cidade, presence: true
	validates :unidade, presence: true
	validates_uniqueness_of :nome, message: "Já Cadastrado na base"
end
