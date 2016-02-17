class Emails < ActiveRecord::Migration
  def self.up
    create_table :emails do |t|
      t.column :destination, :string, :limit => 254, :null => false
      t.column :subject, :string
      t.column :body, :text
      t.column :pub_key, :text
    end
  end

  def self.down
    drop_table :emails
  end
end
