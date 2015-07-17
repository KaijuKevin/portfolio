require 'rails_helper'

describe "recommednations process", js: true do 
	it "will add a recommendation" do
		user = FactoryGirl.create(:user)
		login_as(user, scope: :user)
		visit root_path
		click_link "Add recommendation"
		fill_in "Description", with: "Test recommendation description"
		click_button "Submit Recommendation"

		expect(page).to have_content("Test recommendation description")
	end
end