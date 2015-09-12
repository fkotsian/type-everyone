require 'feature_helper'

describe "Voting for a figure's type", feature: true do  
  scenario "voting" do
    visit "/random"
    within '#play-buttons-holder' do
      click_button('ENTP')
    end
    
    expect(Vote.count).to eq 1
    
    vote = Vote.last
    expect(vote.figure.name).to eq "Benjamin Franklin"
    expect(vote.vote_type.name).to eq "entp"
  end
end