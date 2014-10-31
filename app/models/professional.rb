class Professional < ActiveRecord::Base
	belongs_to :profession
	belongs_to :user
	has_many :tickets
end
