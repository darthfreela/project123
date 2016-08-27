class SolicitacaoFer < ActiveRecord::Base
      validates :id_func, presence: true
      validates :data_inicial, presence: true
      validates :data_final, presence: true
      validates :aprovado, presence: true
end
