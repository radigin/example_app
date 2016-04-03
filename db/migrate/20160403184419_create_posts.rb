class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.string :full_name, null: false
      t.index :full_name, unique: true

      t.timestamps null: false
    end
  end
end
