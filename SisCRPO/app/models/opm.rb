class Opm < ActiveRecord::Base
  has_many :gpm
  validates :nome, presence: true
  validates :sigla, presence: true
end
