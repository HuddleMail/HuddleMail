class Profiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.column :email, :string, :limit => 254, :null => false
      t.column :password, :string, :null => false
    end
  end

  def self.down
    drop_table :profiles
  end
end