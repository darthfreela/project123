class Gpm < ActiveRecord::Base

	validates :initials, :name, :city_id, presence: true

	# relacionamentos
  has_one :extra_hour_distribution

end
