require 'rails_helper'

describe "the process of editing a post" do 
	it "will edit a post" do 
		post = FactoryGirl.create(:post)
		visit post_path(post)
		click_link "Edit"
		fill_in "Title", with: "This is an edited title"
		fill_in "Body", with: "This is an edited body"
		click_button "Submit"

		expect(page).to have_content("Post has been successfully edited")
	end

	it "will show an error if the form is blank" do
		post = FactoryGirl.create(:post)
		visit edit_post_path(post)
		fill_in "Title", with: ""
		fill_in "Body", with: ""
		click_button "Submit"

		expect(page).to have_content("Please fix these errors")
	end
end