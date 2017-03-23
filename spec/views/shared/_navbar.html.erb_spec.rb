require 'rails_helper'

describe "shared/_navbar.html.erb" do

  context "when user logged in" do
      before { sign_in user }

    context "without profile" do
      let(:user) { create :user }

      it "renders email" do
        render
        expect(rendered).to have_content(user.email)
      end
    end

    context "with profile" do
      let(:profile) { build :profile }
      let(:user) { create :user, profile: profile}

      it "renders first name and last name" do
        render
        expect(rendered).to have_content(profile.first_name)
        expect(rendered).to have_content(profile.last_name)
      end
    end
  end

  context "when user not logged in" do
    it "shows log in and sign up links" do
      render
      expect(rendered).to have_text("Log In")
      expect(rendered).to have_text("Sign Up")
    end
  end
end
