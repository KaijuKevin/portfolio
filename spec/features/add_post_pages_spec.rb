require 'rails_helper'

describe "the process of adding a post" do
	it "will add a post" do
		visit posts_path
		click_link "New Post"
		post = FactoryGirl.create(:post)
		fill_in "Title", with: post.title
		fill_in "Body", with: post.body
		click_button "Submit"

		expect(page).to have_content("Post has been successfully added")
	end

	it "will show an error if the form is blank" do
		visit new_post_path
		click_button "Submit"

		expect(page).to have_content("Please fix these errors")
	end
end