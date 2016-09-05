class ReleaseVacation < ActiveRecord::Base
  belongs_to :users
  validates :inicial_date, presence: true
  validates :final_date, presence: true
  before_create :approved_false


private
    def approved_false
        self.approved = 0
    end
end
