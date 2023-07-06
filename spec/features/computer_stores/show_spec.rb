require 'rails_helper'

RSpec.describe ComputerStore, type: :feature do  
    describe 'When I visit /parents/:id' do
        it 'Shows the parent with that id including the parents attributes' do
            store_1 = ComputerStore.create!(name: "Main Store", location: "123 Easy ave.", repairs: true, rank: 2)
            store_2 = ComputerStore.create!(name: "Second Store", location: "1322 Bigben rd.", repairs: false, rank: 3)
            store_3 = ComputerStore.create!(name: "Third Store", location: "504 long rd.", repairs: true, rank: 1)

            visit "/computerstores/#{store_1.id}"

            expect(page).to have_content(store_1.name)
            expect(page).to have_content(store_1.location)
            expect(page).to have_content(store_1.repairs)
            expect(page).to have_content(store_1.rank)

            visit "/computerstores/#{store_2.id}"

            expect(page).to have_content(store_2.name)
            expect(page).to have_content(store_2.location)
            expect(page).to have_content(store_2.repairs)
            expect(page).to have_content(store_2.rank)

            visit "/computerstores/#{store_3.id}"

            expect(page).to have_content(store_3.name)
            expect(page).to have_content(store_3.location)
            expect(page).to have_content(store_3.repairs)
            expect(page).to have_content(store_3.rank)
        end
    end
end