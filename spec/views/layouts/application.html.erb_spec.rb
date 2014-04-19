require 'spec_helper'
require 'pry'

describe "layouts/application" do
  context "Given User is signed in" do

    before :each do
      view.stub(:user_signed_in?).and_return(true)
      view.stub(:current_user).and_return(user_without_profile)
    end

    context 'When User has no Profile' do

      let(:user_without_profile) { FactoryGirl.create(:user) }

      it "then User should see 'Create Profile' link" do
        render
        rendered.should have_css('a[href*="profiles/new"]', count: 1)
      end
    end
  end
end