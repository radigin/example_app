class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :last_name
      t.string :first_name
      t.string :second_name
      t.date :birthday
      t.string :sex

      t.timestamps null: false
    end
  end
end
