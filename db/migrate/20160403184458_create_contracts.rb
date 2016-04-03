class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :person, index: true, foreign_key: true, null: false
      t.references :post, index: true, foreign_key: true, null: false
      t.float :salary, null: false, default: 0

      t.timestamps null: false
    end
  end
end
