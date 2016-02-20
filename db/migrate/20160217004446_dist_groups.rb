class DistGroups < ActiveRecord::Migration
  def self.up
    create_table :dist_groups do |t|
      t.column :email, :string, :null => false
      t.column :pub_key, :text, :null => false
    end
  end


  def self.down
    drop_table :dist_groups
  end
end
