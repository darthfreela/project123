class Company < ActiveRecord::Base
	validates :nome, presence: true
	validates :ativo, presence: true
	validates :cidade, presence: true
	validates :unidade, presence: true
#	validates_uniqueness_of :nome, conditions: -> { where.not(status: 'archived') }
end
