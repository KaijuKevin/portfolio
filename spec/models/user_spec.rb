require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :username }
  it { should have_one :recommendation }
end
