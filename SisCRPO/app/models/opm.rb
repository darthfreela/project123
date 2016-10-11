class Opm < ActiveRecord::Base
  has_many :gpm
  validates :initials, presence: true
  validates :name, presence: true


  # relacionamentos
  has_one :companie
end
