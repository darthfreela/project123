class RequestLicence < ActiveRecord::Base
      
      validates :type, presence: true
      validates :date_begin, presence: true
      validates :date_end, presence: true

      # relacionamentos
      # belongs_to :user
end
