class CreateComputerStores < ActiveRecord::Migration[7.0]
  def change
    create_table :computer_stores do |t|
      t.string :name
      t.string :location
      t.boolean :repairs
      t.integer :rank

      t.timestamps
    end
  end
end
