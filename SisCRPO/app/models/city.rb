class City < ActiveRecord::Base
	validates :nome, presence: true
	validates :uf, presence: true
end
