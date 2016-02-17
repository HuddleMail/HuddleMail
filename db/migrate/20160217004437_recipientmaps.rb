class Recipientmaps < ActiveRecord::Migration
  def self.up
    create_table :recipients_maps do |t|
      t.column :dg_id, :integer, :null => false
      t.column :recip_id, :text, :null => false
    end
  end

  def self.down
    drop_table :recipient_maps
  end
end
