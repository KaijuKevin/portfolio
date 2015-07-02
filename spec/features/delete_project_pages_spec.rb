require 'rails_helper'

describe "the delete project process" do 
	it "will delete the project from a skill" do 
		skill = Skill.create(name: "Javascript", description: "Another language")
		project = skill.projects.create(name: "Prime Numbers", description: "Prime number generator", link: "primes.com")
		visit skill_project_path(skill, project)
		click_link "Delete"
		expect(page).to have_content("Project successfully deleted")
	end
end