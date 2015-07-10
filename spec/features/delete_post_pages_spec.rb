require 'rails_helper'

describe "the process of deleting a post" do 
	it "will delete a post" do
		post = FactoryGirl.create(:post)
		visit post_path(post)
		click_link "Delete"

		expect(page).to have_content("Post has been deleted")
	end
end