class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :second_name
      t.date :birthday, null: false
      t.string :sex, null: false, limit: 1

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        execute("ALTER TABLE people ADD CONSTRAINT sex_ck CHECK(sex IN('м', 'ж'))")
      end
    end
  end
end
