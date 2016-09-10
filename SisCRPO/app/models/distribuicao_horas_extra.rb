class DistribuicaoHorasExtra < ActiveRecord::Base

  validates :idUnidade, :numeroDeHoras, :dataInicio, :dataTermino, presence: true


end
