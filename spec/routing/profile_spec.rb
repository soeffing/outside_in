require 'spec_helper'

describe "Profile routes" do
  it 'should route to new Profile path'  do
    expect(get: '/profiles/new').to route_to(
      :controller => "profiles",
      :action => "new"
    )
  end
end
