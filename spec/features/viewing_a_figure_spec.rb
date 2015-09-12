require 'feature_helper'

describe "Figures page", feature: true do  
  scenario "loading a figure" do
    visit "/random"
    expect(page).to have_text "Benjamin Franklin"
    expect(page).to have_xpath("//img[@src=\"/assets/benjamin_franklin.jpg\"]")
  end
  
  scenario "getting the next figure" do
    visit "/random"
    expect(page).to have_link "Next"
  end
end