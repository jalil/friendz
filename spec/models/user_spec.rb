require 'spec_helper'

describe User do
  it{should validate_presence_of(:first_name)}
  it{should validate_presence_of(:last_name)}
  it{should validate_presence_of(:email)}
  it{should validate_uniqueness_of(:email)}
  it{should have_many(:friends)}
  it{should have_one(:beneficiary)}
end