class AddComputerStoresToComputers < ActiveRecord::Migration[7.0]
  def change
    add_reference :computers, :computer_store, null: false, foreign_key: true
  end
end
