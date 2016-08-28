class Company < ActiveRecord::Base
	validates :nome, uniqueness: true, presence: true
	validates :ativo, presence: true
	validates :cidade, presence: true
	validates :unidade, presence: true
	validates :numero_servidor, presence: true, numericality: true
end
