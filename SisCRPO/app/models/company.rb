class Company < ActiveRecord::Base
	validates :name, presence: true
	validates :ativo, presence: true
	validates :cidade, presence: true
	validates :unidade, presence: true
	validates :numero_servidor, presence: true
end
