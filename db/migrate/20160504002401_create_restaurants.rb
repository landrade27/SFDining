class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :neighborhood
      t.string :cuisine
      t.boolean :private_dining
      t.boolean :chefs_table
      t.integer :min_people
      t.integer :max_people
      t.boolean :buyout
      t.string :buyout_price
      t.string :contact_name
      t.string :contact_number
      t.string :contact_email
      t.boolean :valet
      t.boolean :full_bar

      t.timestamps null: false
    end
  end
end
