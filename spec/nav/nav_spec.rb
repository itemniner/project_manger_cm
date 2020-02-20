require 'rails_helper'

RSpec.describe 'Site Navigation', type: :feature do
  describe 'As a Visitor' do
    it "I see a nav bar with links to Home page" do
    visit '/'

    within 'nav' do
      click_link 'Home'
    end

    expect(current_path).to eq("/")
    end

    it "can visit projects page" do
      visit '/'

      within 'nav' do
        click_link 'Finshed Projects'
      end
    end
  end
end