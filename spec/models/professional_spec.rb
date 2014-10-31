require 'rails_helper'

describe Professional do
	subject(:professional) {Professional.new(profession_id: 1, user_id: 1)}

	describe "#association#user" do
		it {should belong_to(:user)}
	end
	describe "#association#profession" do
		it {should belong_to(:profession)}
	end
end
