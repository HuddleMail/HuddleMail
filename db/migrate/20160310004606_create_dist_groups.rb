class CreateDistGroups < ActiveRecord::Migration
  def change
    create_table :dist_groups do |t|
      t.string :dist_name
      t.text :pub_key
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
