require 'rails_helper'

describe "Signing Up" do
  before do
    visit products_url
    click_on "Sign Up"
    fill_in "user_email", with:"mail@bigdreams.com"
  end

  context "when password is too short" do
    it "does not allow the user to sign up" do
      fill_in "Password", with: "short"
      click_on "Sign up"

      expect(page).to have_content("Password is too short (minimum is 6 characters)")
    end
  end

  context "when password is long enough" do
      it "creates an account for a new user" do
        fill_in "Password", with: "this-is-more-safe-2017"
        click_on "Sign up"
        expect(page).to have_content("Welcome! You have signed up successfully.")
    end
  end
end
