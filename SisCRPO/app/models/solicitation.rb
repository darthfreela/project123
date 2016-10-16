class Solicitation < ActiveRecord::Base
  '''
  Tipos existentes de solicitação:
    1- solicitação de férias
    campos: user_id,date_begin,date_end,description,status(0-não visualizado,1-visualizado,2-aprovado,3-negado)

    2- solicitação de dispensas
    campos: igual ao 1

    3- solicitação de licenças
    campos: igual ao 1, ++ type("Especial","Interesses próprios"), ++ licence_days,
    OBS: quando o usuário escolher esta opção deve renderizar os campos do 3 na tela, para o usuário selecionar.
  '''
      validates :date_begin, presence: true
      validates :date_end, presence: true
      validates :license_days, numericality: true

      # relacionamentos
      belongs_to :user
end
