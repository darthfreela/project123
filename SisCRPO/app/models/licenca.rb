class Licenca < ActiveRecord::Base
      validates :idFunc, presence: true
      validates :nome, presence: true
      validates :tipo, presence: true
      validates :dataInicial, presence: true
      validates :dataFinal, presence: true
end
