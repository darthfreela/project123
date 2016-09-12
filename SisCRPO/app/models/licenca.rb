class Licenca < ActiveRecord::Base
      validates :nome, presence: true
      validates :tipo, presence: true
      validates :dataInicial, presence: true
      validates :dataFinal, presence: true

      # relacionamentos
      belongs_to :user
end
