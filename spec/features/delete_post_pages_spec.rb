require 'rails_helper'

describe "the process of deleting a post" do 
	it "will delete a post" do
		admin = FactoryGirl.create(:admin)
		login_as(admin, scope: :user)
		post = FactoryGirl.create(:post)
		visit post_path(post)
		click_link "Delete"

		expect(page).to have_content("Post has been deleted")
	end
end