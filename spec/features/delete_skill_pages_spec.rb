require 'rails_helper'

describe "the delete skill process" do 
	it "will delete the skill" do 
		admin = FactoryGirl.create(:admin)
		login_as(admin, scope: :user)
		skill = FactoryGirl.create(:skill)
		visit skill_path(skill)
		click_link "Delete"
		expect(page).to have_content("Skill successfully deleted")
	end
end