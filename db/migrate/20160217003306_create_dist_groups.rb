class CreateDistGroups < ActiveRecord::Migration
  def change
    create_table :dist_groups do |t|

      t.timestamps null: false
    end
  end
end
