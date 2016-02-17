class Distgroups < ActiveRecord::Migration
  def self.up
    create_table :distgroups do |t|
      t.column :dg_id, :integer, :null => false
      t.column :sender, :string, :null => false
      t.column :pub_key, :text, :null => false
    end
  end


  def self.down
    drop_table :distgroups
  end
end
