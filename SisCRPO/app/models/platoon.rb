class Platoon < ActiveRecord::Base
	validates :name, presence: true
	validates :city_id, presence: true
	validates :gpm_id, presence: true
end
