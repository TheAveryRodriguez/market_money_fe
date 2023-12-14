require "rails_helper"

RSpec.describe "Vendor Show", type: :request do
  it "returns a successful response", :vcr do
    get "/vendors/54849"
    expect(response).to be_successful
  end

  it "properly displays data", :vcr do
    visit "/vendors/54849"

    expect(page).to have_content("Organic Farms")
    expect(page).to have_content("This vendor specializes in selling fresh, organic fruits and vegetables grown on their farm. They may also sell jams, jellies, and pickles made from their produce.")
    expect(page).to have_content("Msgr. Floyd Cole")
    expect(page).to have_content("390.398.6702")
    expect(page).to have_content("NO")
  end
end
