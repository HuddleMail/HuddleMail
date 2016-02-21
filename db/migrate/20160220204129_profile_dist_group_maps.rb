class ProfileDistGroupMaps < ActiveRecord::Migration
  def self.up
    create_table :profile_dist_group_maps do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :dist_group, index: true
    end
  end

  def self.down
    drop_table :profile_dist_group_maps
  end
end
