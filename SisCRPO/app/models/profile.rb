class Profile < ActiveRecord::Base

	has_one :post_graduation

	has_many :users
end
