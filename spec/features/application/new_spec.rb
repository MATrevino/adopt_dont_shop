require 'rails_helper'

RSpec.describe 'Application New Page' do
  describe 'when I click on link' do
    it "Then I am taken to the new application page where I see a form" do
      visit "/pets"

      click_on "Start an Application"

      expect(current_path).to eq("/applications/new")
    end

    it 'I fill in this form with info' do
      
      visit "/applications/new"
      
      fill_in 'Name', with: 'Meredith'
      fill_in 'street_address', with: '20 E. Bayaud Ave.'
      fill_in 'City', with: 'Denver'
      fill_in 'State', with: 'Colorado'
      fill_in 'zip_code', with: '80209'
      fill_in 'Description', with: 'I love dogs with all my heart and soul'
      
      click_on "Submit"

      expect(current_path).to eq("/applications/#{Application.last.id}")
      expect(page).to have_content('Meredith')
      expect(page).to have_content('20 E. Bayaud Ave.')
      expect(page).to have_content('Denver')
      expect(page).to have_content('Colorado')
      expect(page).to have_content(80209)
      expect(page).to have_content('I love dogs with all my heart and soul')
    end
  end
end