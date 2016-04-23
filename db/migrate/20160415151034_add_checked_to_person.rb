class AddCheckedToPerson < ActiveRecord::Migration
  def change
    add_column :people, :checked, :boolean, default: false
  end
end
