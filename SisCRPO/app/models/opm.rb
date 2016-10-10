class Opm < ActiveRecord::Base
  has_many :gpm
  validates :nome, presence: true
  validates :sigla, presence: true


  # relacionamentos
  has_one :companie
end
