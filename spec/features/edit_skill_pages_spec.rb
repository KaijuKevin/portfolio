require 'rails_helper'

describe "the edit skill process" do 
	it "will change the name and description" do 
		admin = FactoryGirl.create(:admin)
		login_as(admin, scope: :user)
		skill = FactoryGirl.create(:skill)
		visit skill_path(skill)
		click_on "Edit"
		fill_in "Name", with: "Ruby Jewels"
		fill_in "Description", with: "Ice cream shop"
		click_on "Submit"
		expect(page).to have_content("Skill successfully edited")
	end

	it "will show errors if the form is blank" do 
		admin = FactoryGirl.create(:admin)
		login_as(admin, scope: :user)
		skill = FactoryGirl.create(:skill)
		visit skill_path(skill)
		click_on "Edit"
		fill_in "Name", with: ""
		fill_in "Description", with: ""
		click_on "Submit"
		expect(page).to have_content("Please fix these errors")
	end
end