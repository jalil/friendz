require 'spec_helper'

describe Friend do

  it{ should validate_presence_of(:name)}
  it{ should validate_presence_of(:name)}
  it{ should validate_presence_of(:email)}
  it{ should validate_uniqueness_of(:email)}
  it{ should validate_presence_of(:message)}
  it{ should belong_to(:user)}

end
