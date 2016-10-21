class TextInformative < ActiveRecord::Base
	
	validates :description, presence:true
	validates :type_informative, presence:true	
end
