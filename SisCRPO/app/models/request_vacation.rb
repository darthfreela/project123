class RequestVacation < ActiveRecord::Base
  belongs_to :users
  validates :date_begin, presence: true
  validates :date_end, presence: true
  #before_create :approved_false


#private
 #   def approved_false
  #      self.approved = "0"
   # end
end
