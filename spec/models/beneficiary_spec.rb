require 'spec_helper'

describe Beneficiary do

  it{ should validate_presence_of(:last_name)}
  it{ should validate_presence_of(:first_name)}
  it{ should validate_presence_of(:email)}
  it{ should validate_uniqueness_of(:email)}
  it{ should belong_to(:user)}
end
