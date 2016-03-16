class CreateDisGroups < ActiveRecord::Migration
  def change
    create_table :dis_groups do |t|
      t.string :disname

      t.timestamps null: false
    end
  end
end
