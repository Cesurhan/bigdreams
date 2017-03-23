require 'rails_helper'

describe "Navigating Products" do

  context "when user is logged in" do

    let(:user) { create :user }
    let!(:product) { create :product }

    it "allows navigation from the products page to the details page"do
      visit products_url

      click_on "View"

      expect(current_path).to eq(product_path(product))
    end
  end

  context "when user is not logged in" do
      let!(:product) { create :product }

    it "allows navigation from the detail page to the listing page" do
      visit product_url(product)

      click_on "Back"

      expect(current_path).to eq(products_path)
    end
  end
end
