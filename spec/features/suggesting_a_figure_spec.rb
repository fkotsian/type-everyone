require 'feature_helper'

describe "Suggesting a Figure", feature: true, js: true do  
  let(:franklin_url) { 'http://listverse.wpengine.netdna-cdn.com/wp-content/uploads/2013/01/url-7.jpg' }

  scenario "accessing the modal" do
    visit "/"
    click_on('Suggest')
    expect(page).to have_text "Suggest a Figure!"
  end
  
  context "getting the next figure" do
    scenario 'happy path' do
      visit "/"
      click_on('Suggest')
      within '#new_figure' do
        fill_in 'figure_name', with: 'Benjamin Franklin'
        fill_in 'figure_figure_images_url', with: franklin_url
        require 'pry'; binding.pry
        within '#figure_figure_category' do   
          find('option[value="celebrities"]').select_option
        end      
        click_button 'Submit'
      end
      expect(Figure.count).to eq 1
    end
    
    context 'when figure already exists' do
      context 'and the image is new' do
        scenario 'adds the image to the Figures list'
      end
    end
  end
end