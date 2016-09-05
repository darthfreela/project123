class DistribuicaoHorasExtra < ActiveRecord::Base

  validates :idUnidade, :numeroDeHoras, presence: true

end
