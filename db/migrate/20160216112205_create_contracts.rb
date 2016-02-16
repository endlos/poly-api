class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.text :details
      t.string :name
      t.references :client, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
