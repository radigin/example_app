class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :person, index: true, foreign_key: true, null: false
      t.string :index, null: false, limit: 6
      t.string :region, null: false
      t.string :district
      t.string :city
      t.string :settlement
      t.string :street
      t.string :house
      t.string :building
      t.string :construction
      t.string :flat
      t.integer :atype, null: false

      t.timestamps null: false
    end
  end
end
