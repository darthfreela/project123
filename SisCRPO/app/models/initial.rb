class Initial < ActiveRecord::Base
    validates :initial, presence: true, length: {minimum:3, maximum: 6}
    validates :name, presence: true, length: {maximum: 80}
end
