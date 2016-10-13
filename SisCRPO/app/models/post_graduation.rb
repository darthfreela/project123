class PostGraduation < ActiveRecord::Base
	belongs_to :profiles
	validates :initials, presence: true
	validates :name, presence: true
	validates :active, presence: true
	belongs_to :users
	has_many :users
end
