class Opm < ActiveRecord::Base
  has_many :gpm
  validates :initials, presence: true
  validates :name, presence: true
  validates :city_id, presence: true


  # relacionamentos
  has_one :companie
end
