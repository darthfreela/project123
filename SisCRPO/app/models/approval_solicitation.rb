class ApprovalSolicitation < ActiveRecord::Base
  '''
    status(0-não visualizado,1-visualizado,2-aprovado,3-negado)
  '''

  # relacionamentos
  belongs_to :user
  belongs_to :solicitation
end
