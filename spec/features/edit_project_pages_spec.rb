require 'rails_helper'

describe "the edit project path" do 
	it "will edit the project" do 
		skill = Skill.create(name: "Javascript", description: "Another language")
		project = skill.projects.create(name: "Prime Numbers", description: "Prime number generator", link: "primes.com")
		visit skill_project_path(skill, project)
		click_link "Edit"
		fill_in "Name", with: "Library"
		fill_in "Description", with: "Links book to authors"
		fill_in "Link", with: "libary.com"
		click_on "Submit"

		expect(page).to have_content "Project successfully updated"
	end
end