class CreateRlists < ActiveRecord::Migration
  def change
    create_table :rlists do |t|
      t.string :email
      t.text :pubkey
      t.references :dis_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
