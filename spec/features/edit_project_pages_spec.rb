require 'rails_helper'

describe "the edit project path" do 
	it "will edit the project" do 
		admin = FactoryGirl.create(:admin)
		login_as(admin, scope: :user)
		project = FactoryGirl.create(:project)
		visit skill_project_path(project.skill, project)
		click_link "Edit"
		fill_in "Name", with: "Library"
		fill_in "Description", with: "Links book to authors"
		fill_in "Link", with: "libary.com"
		click_on "Submit"

		expect(page).to have_content "Project successfully updated"
	end

	it "will show errors if the form is blank" do 
		admin = FactoryGirl.create(:admin)
		login_as(admin, scope: :user)
		project = FactoryGirl.create(:project)
		visit skill_project_path(project.skill, project)
		click_link "Edit"
		fill_in "Name", with: ""
		fill_in "Description", with: ""
		fill_in "Link", with: ""
		click_on "Submit"
		
		expect(page).to have_content "Please fix these errors"
	end
end