class InformativeTextDailyBulletin < ActiveRecord::Base
	validates :type, presence: true
	validates :description, presence: true
end
