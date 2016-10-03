class InformativeTextDailyBulletin < ActiveRecord::Base
	validates :type_info, presence: true
	validates :description, presence: true
end
