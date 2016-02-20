class DistGroupRecipientMaps < ActiveRecord::Migration
  def self.up
    create_table :dist_group_recipient_maps do |t|
      t.belongs_to :dist_group, index: true
      t.belongs_to :recipient, index: true
    end
  end

  def self.down
    drop_table :dist_group_recipient_maps
  end
end
