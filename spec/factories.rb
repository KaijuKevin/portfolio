FactoryGirl.define do
	
	factory(:skill) do
		name("Ruby")
		description("Make programmers happy")
	end

	factory(:project) do
		name("Todo List")
		description("One of many")
		link("todolist.com")
		skill
	end
end