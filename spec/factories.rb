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

	factory(:post) do
		title("Meetup summary")
		body("In today's meetup I learned to use stable technologies in production projects")
	end

	factory(:user) do
		username("user")
		email("user@kaijukevin.com")
		password("123password")
	end

	factory(:admin, class: User) do
		username("user")
		email("user@kaijukevin.com")
		password("123password")
		admin(true)
	end
end