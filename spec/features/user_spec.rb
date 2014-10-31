require 'rails_helper'

RSpec.feature '#Register' do
  scenario 'Successful registration' do

		visit '/users/new'

		within "form" do
			fill_in "Name", with: "Some Guy"
	    fill_in "Email", with: "user@example.com"
	    fill_in "Password", with: "password"
	    fill_in "Password confirmation", with: "password"
	    click_button "Register"
  end
  expect(page).to have_content 'You have signed in successfully'
end