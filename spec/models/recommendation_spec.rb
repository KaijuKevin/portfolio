describe Recommendation do 
	it { should validate_presence_of :description }
	it { should belong_to :user }
end