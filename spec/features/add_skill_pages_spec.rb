require "rails_helper"

describe "the add a skill process" do
	it "will add a new list" do
		visit root_path
		click_on "Add a new skill"
		fill_in "Name", with: "Ruby"
		fill_in "Description", with: "A language that I am learning"
		click_on "Submit"
		click_link "Ruby"

		expect(page).to have_content("A language that I am learning")
	end

	it "will show errors when form is blank" do
		visit new_skill_path
		click_on "Submit"
		expect(page).to have_content("errors")
	end
end