class Function < ActiveRecord::Base

  validates :sigla, presence: true, length: {minimum:3, maximum: 6}
  validates :funcao, presence: true, length: {maximum: 50}
  validates :vagas, presence: true, numericality: { :greater_than_or_equal_to => 0 }
  validates :ativo, presence: true

end
