require 'spec_helper'

describe Vote do
  it { should validate_presence_of :votable_type }
  it { should validate_presence_of :votable_id }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :awesomeness }
  it { should belong_to :user }
end
