class Uniform < ActiveRecord::Base

  validates :sigla, presence: true, length: {minimum:3, maximum: 6}
  validates :uniforme, presence: true, length: {maximum: 50}
  validates :descricao, presence: true, length: {maximum: 400}
  # formata a data na tela
  Time::DATE_FORMATS[:format_date] = "%d/%m/%y- %H:%Mhrs"

end
