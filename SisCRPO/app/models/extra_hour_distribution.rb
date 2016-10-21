class ExtraHourDistribution < ActiveRecord::Base

  validates :gpm_id, :date_begin, :date_end, presence: true
  validates :how_many_hours, presence: true, numericality: { :greater_than_or_equal_to => 1 }

  # relacionamentos
	belongs_to :gpm

end
