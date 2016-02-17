class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|

      t.timestamps null: false
    end
  end
end
