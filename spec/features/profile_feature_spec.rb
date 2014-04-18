require 'spec_helper'

feature 'Profile Feature' do
  context "Given User has no profile" do

    let(:user_without_profile) { FactoryGirl.create(:user)}
    let(:sign_in_url) { sign_in_path }

    context "when User signs in" do

      background do
        visit sign_in_url

        fill_in 'user_email', with: user_without_profile.email
        fill_in 'user_password', with: user_without_profile.password
        click_button 'Sign in'
      end

      it "then User should see a link 'Create Profile'" do
        page.should have_link('Create Profile', href: new_profile_path)
      end

      context "and when User clicks 'Create Profile' link" do
        background do
          click_on "Create Profile"
        end

        xit "then User should be on new profile page" do
          current_path.should == "/profiles/new"
        end

        context 'and when User enters valid data into profile form' do
          xit "then User should see success message" do
            fill_in 'profile_first_name', with: "John"
            click_button "Save Profile"
            page.should have_content("Profile could not be saved successfully")
          end
        end

        context 'and when User enters invalid data into profile form' do
          xit "then User should see error message" do
            fill_in 'profile_first_name', with: "toolooooooooooooooooooooooooooooooooooooooooooooongname"
            click_button "Save Profile"
            page.should have_content("Profile could not be saved successfully")
          end
        end
      end
    end
  end

  context "Given User has a profile" do
    context "when User signs in" do

      xit "then User should see a link 'Create Profile'" do
      end
    end

    # More scenarios go here
  end
end