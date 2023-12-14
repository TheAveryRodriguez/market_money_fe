require "rails_helper"

RSpec.describe "Market Show", type: :request do
  it "returns a successful response", :vcr do
    get "/markets/322458"
    expect(response).to be_successful
  end

  it "properly displays data", :vcr do
    visit "/markets/322458"

    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content("1400 U Street")
    expect(page).to have_content("NW Washington")
    expect(page).to have_content("District of Columbia")
  end
end
