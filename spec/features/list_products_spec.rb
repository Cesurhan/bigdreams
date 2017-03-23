require 'rails_helper'

describe "Current user viewing the list of products" do

  let!(:product1) { create :product, name: "Product 1"}
  let!(:product2) { create :product, name: "Product 2"}


  it "shows the list of products" do
    visit products_url

    expect(page).to have_text("Product 1")
    expect(page).to have_text("Product 2")
  end
end
