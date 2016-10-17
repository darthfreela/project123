class ApprovalSolicitation < ActiveRecord::Base

  # relacionamentos
  belongs_to :user
  belongs_to :solicitation

end
