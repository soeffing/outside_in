require 'spec_helper'

describe Profile do
  it "should belong_to user" do
    g = Profile.reflect_on_association(:user)
    g.macro.should == :belongs_to
  end
end
