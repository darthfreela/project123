class Opm < ActiveRecord::Base
  validates :nome, presence: true
  validates :sigla, presence: true
end
