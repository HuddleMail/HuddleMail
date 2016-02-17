class Recipients < ActiveRecord::Migration
  def self.up
    create_table :recipients do |t|
      t.column :email_address, :string, :limit => 254, :null => false
      t.column :pub_key, :text, :null => false
    end
  end

  def self.down
    drop_table :recipients
  end
end
