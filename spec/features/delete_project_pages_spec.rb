require 'rails_helper'

describe "the delete project process" do 
	it "will delete the project from a skill" do 
		project = FactoryGirl.create(:project)
		visit skill_project_path(project.skill, project)
		click_link "Delete"
		expect(page).to have_content("Project successfully deleted")
	end
end