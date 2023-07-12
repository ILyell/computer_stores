require 'rails_helper'

RSpec.describe Computer, type: :feature do
    describe "When I visit /computers/:id" do
        it 'shows the computer and its attributes' do
            store_1 = ComputerStore.create(name: "Main Store", location: "123 Easy ave.", repairs: true, rank: 2)
            store_2 = ComputerStore.create(name: "Second Store", location: "1322 Bigben rd.", repairs: false, rank: 3)
            store_3 = ComputerStore.create(name: "Third Store", location: "504 long rd.", repairs: true, rank: 1)

            computer_1 = store_1.computer.create(name: "Threadripper", price: 1299.99, on_sale: true)
            computer_2 = store_1.computer.create(name: "Intel 13900k", price: 1999.99, on_sale: false)
            computer_3 = store_2.computer.create(name: "AMD 7800x3d", price: 1799.99, on_sale: true)
            computer_4 = store_2.computer.create(name: "Intel 12900k", price: 1199.99, on_sale: false)
            computer_5 = store_3.computer.create(name: "AMD 5600x", price: 1099.99, on_sale: true)
            computer_6 = store_3.computer.create(name: "Intel 9700k", price: 800.00, on_sale: false)

            visit "computers/#{computer_1.id}"

            expect(page).to have_content(computer_1.name)
            expect(page).to have_content(computer_1.price)
            expect(page).to have_content(computer_1.on_sale)

            visit "computers/#{computer_2.id}"

            expect(page).to have_content(computer_2.name)
            expect(page).to have_content(computer_2.price)
            expect(page).to have_content(computer_2.on_sale)    

            visit "computers/#{computer_3.id}"

            expect(page).to have_content(computer_3.name)
            expect(page).to have_content(computer_3.price)
            expect(page).to have_content(computer_3.on_sale)
        end
    end
end