class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :person, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.float :salary

      t.timestamps null: false
    end
  end
end
