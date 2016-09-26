class Postograduacao < ActiveRecord::Base
	belongs_to :profiles
	belongs_to :users
end
