class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :email
      t.text :pub_key
      t.references :dist_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
