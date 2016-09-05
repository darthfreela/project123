class PointingHour < ActiveRecord::Base
	has_many :users
	belongs_to :tipo_servico
end
