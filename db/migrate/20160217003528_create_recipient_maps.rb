class CreateRecipientMaps < ActiveRecord::Migration
  def change
    create_table :recipient_maps do |t|

      t.timestamps null: false
    end
  end
end
