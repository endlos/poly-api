class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :street_number
      t.string :zip_code
      t.string :state
      t.string :address_for
      t.references :addressable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
