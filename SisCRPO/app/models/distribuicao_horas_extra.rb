class DistribuicaoHorasExtra < ActiveRecord::Base

  validates :idUnidade, :numeroDeHoras, :dataInicio, :dataTermino, presence: true
  Time::DATE_FORMATS[:format_date] = "%d/%m/%y- %H:%Mhrs"
end
