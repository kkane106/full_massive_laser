require 'rails_helper'

describe Profession do
	subject(:profession) {Profession.new(name: "Test profession")}

	describe "#validations" do

		context "is valid" do
			it "has a name" do
				expect(profession.valid?).to eq true
			end
		end

		context "is not valid" do
			it "has no name" do
				profession.name = ""
				expect(profession.valid?).to eq false
			end
		end
	end
end
