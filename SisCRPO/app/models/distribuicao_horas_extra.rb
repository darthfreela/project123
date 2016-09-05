class DistribuicaoHorasExtra < ActiveRecord::Base

<<<<<<< HEAD
  validates :idUnidade, :numeroDeHoras, presence: true
=======
  validates :idUnidade, :numeroDeHoras, :dataInicio, :dataTermino, presence: true
>>>>>>> a32dc3e2905e5d95db5597974561f0fc8f70d32d

end
