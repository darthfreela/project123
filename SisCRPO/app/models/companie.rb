class Companie < ActiveRecord::Base
	validates :name, presence: true
	validates :city_id, presence: true
	validates :opm_id, presence: true

	# relacionamentos
	belongs_to :opm

end
