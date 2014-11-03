class User < ActiveRecord::Base
	has_many :professions, through: :professionals
	has_many :tickets
	has_many :professionals

	def pro?
		self.professions.length > 0
	end

	def self.create_with_omniauth(auth)  
		create! do |user|  
			user.provider = auth["provider"]  
			user.uid = auth["uid"]  
			user.name = auth["info"]["name"]
			user.avatar = auth["info"]["image"].gsub(/50/,"512")
			user.email = auth["info"]["email"]

		end  
	end  

end
