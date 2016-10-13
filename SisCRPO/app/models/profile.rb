class Profile < ActiveRecord::Base
	has_one :postograduacaos
            has_many :users
end
