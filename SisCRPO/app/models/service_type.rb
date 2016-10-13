class ServiceType < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 80}
  validates :initials, presence: true, length: {minimum:3, maximum: 6}
  validates :actived, presence: true
  validates :function_id, numericality:true
  validates :uniform_id, numericality:true
  has_many :pointing_hours
end
