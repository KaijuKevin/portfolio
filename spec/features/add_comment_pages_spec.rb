require 'rails_helper'

describe "the comments process" do
	it "will add a comment", js: true do
		user = FactoryGirl.create(:user)
		login_as(user, scope: :user)
		post = FactoryGirl.create(:post)
		visit post_path(post)
		click_link "New comment"
		fill_in "Comment", with: "Test ajax comment"
		click_button "Submit"

		expect(page).to have_content("Test ajax comment")
	end
end