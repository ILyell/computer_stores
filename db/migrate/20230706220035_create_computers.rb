class CreateComputers < ActiveRecord::Migration[7.0]
  def change
    create_table :computers do |t|
      t.string :name
      t.float :price
      t.boolean :on_sale

      t.timestamps
    end
  end
end
