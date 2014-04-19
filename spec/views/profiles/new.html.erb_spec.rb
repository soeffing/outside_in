require 'spec_helper'

describe 'profiles/new' do
  context 'When User has no Profile' do

    let(:user_without_profile) { FactoryGirl.create(:user) }

    it "then User should see 'Create Profile' link" do
      render
      rendered.should have_css('a[href*="profiles/new"]', count: 1)
    end
  end
end
