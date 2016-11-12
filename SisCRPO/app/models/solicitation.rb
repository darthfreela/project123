class Solicitation < ActiveRecord::Base
  '''
  Tipos existentes de solicitação:
    0- solicitação de férias
    campos: user_id,date_begin,date_end,description

    1- solicitação de dispensas
    campos: igual ao 1

    2- solicitação de licenças
    campos: igual ao 1, ++ type("Especial","Interesses próprios"), ++ licence_days,
    OBS: quando o usuário escolher esta opção deve renderizar os campos do 3 na tela, para o usuário selecionar.
  '''
      validates :date_begin, presence: true
      validates :date_end, presence: true
      # formata a data na tela
      Time::DATE_FORMATS[:format_date] = "%d/%m/%y- %H:%Mhrs"

      # relacionamentos
      belongs_to :user
      has_one :approval_solicitation
end
