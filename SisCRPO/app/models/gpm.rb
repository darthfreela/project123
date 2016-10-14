class Gpm < ActiveRecord::Base

	validates :initials, :name, :city_id, presence: true


end
