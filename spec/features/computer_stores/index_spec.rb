require 'rails_helper'
# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system
RSpec.describe ComputerStore, type: :feature do 
    describe "when I vist /computerstores" do
        it 'displays the name of each computer store in the system' do
            store_1 = ComputerStore.create!(name: "Main Store", location: "123 Easy ave.", repairs: true, rank: 2)
            store_2 = ComputerStore.create!(name: "Second Store", location: "1322 Bigben rd.", repairs: false, rank: 3)
            store_3 = ComputerStore.create!(name: "Third Store", location: "504 long rd.", repairs: true, rank: 1)

            visit "/computerstores"

            expect(page).to have_content(store_1.name)
            expect(page).to have_content(store_2.name)
            expect(page).to have_content(store_3.name)
        end
    end
end