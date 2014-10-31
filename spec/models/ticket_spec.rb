require 'rails_helper'

describe Ticket do
	subject(:ticket) {Ticket.new(professional_id: 1, user_id: 1, title: "I broke my toilet", body: "It involved a whole bunch of chipotle")}

	describe "#association#user" do
		it {should belong_to(:user)}
	end
	describe "#association#professional" do
		it {should belong_to(:professional)}
	end

	describe "#validations" do

		context "is valid" do
			it "has a title and body" do
				expect(ticket.valid?).to eq true
			end
		end

		context "is not valid" do
			it "has no title" do
				ticket.title = ""
				expect(ticket.valid?).to eq false
			end

			it "has no body" do
				ticket.body = ""
				expect(ticket.valid?).to eq false
			end
		end
	end
end