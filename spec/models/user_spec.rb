require 'rails_helper'

describe User do
	subject(:user) {User.new(name: "Test User", email: "test@test.com", password: "test")}

	describe "#validations" do

		context "is valid" do
			it "has a name, email, and password" do
				expect(user.valid?).to eq true
			end
			it "password must be at least 4 letters" do
				user.password = "yeah"
				expect(user.valid?).to eq true
			end
		end

		context "is not valid" do
			it "has no name" do
				user.name = ""
				expect(user.valid?).to eq false
			end

			it "has no email" do
				user.email = ""
				expect(user.valid?).to eq false
			end

			it "password must be at least 4 letters" do
				user.password = "nop"
				expect(user.valid?).to eq false
			end
			
			it "has neither a name, nor email, nor a password" do
				user.email = ""
				user.name = ""
				user.password = ""
				expect(user.valid?).to eq false
			end
		end
	end

	describe "#pro? method" do
	end
end
