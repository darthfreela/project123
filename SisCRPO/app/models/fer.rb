class Fer < ActiveRecord::Base
      validates :idFunc, presence: true
      validates :dataInicial, presence: true
      validates :dataFinal, presence: true
      validates :aprovado, presence: true
end
