require 'rails_helper'

describe "the comments process" do
	it "will add a comment", remote: true do
		user = FactoryGirl.create(:user)
		login_as(user, scope: :user)
		post = FactoryGirl.create(:post)
	end
end