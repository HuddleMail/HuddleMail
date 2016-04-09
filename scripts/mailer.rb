#!/bin/ruby

require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "HuddleMail_development"
)

ActiveRecord::Schema.define(version: 20160310010655) do
  create_table "dist_groups", force: :cascade do |t|
    t.string   "dist_name"
    t.text     "pub_key"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dist_groups", ["user_id"], name: "index_dist_groups_on_user_id"

  create_table "recipients", force: :cascade do |t|
    t.string   "email"
    t.text     "pub_key"
    t.integer  "dist_group_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "recipients", ["dist_group_id"], name: "index_recipients_on_dist_group_id"
end

class DistGroup < ActiveRecord::Base
  belongs_to :user
  has_many :recipients
end

class Recipient < ActiveRecord::Base
  belongs_to :dist_group
end

incoming = "From: neal friedman <nealiof1000@gmail.com>
Date: Fri, 8 Apr 2016 08:54:55 -0600
Message-ID: <CA+GV4WqXHt7sHAGCXVwydcOyqkHjo-7DK3ht18tWtvJc5j36Vg@mail.gmail.com>
Subject: this is a test
To: test@huddlemail.xyz"

## Read in Encrypted Message from STDIN
# incoming = $stdin.read
#
# ## Decrypt the Incoming Group Message
# decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`
#
## Pull out the local part
regex = /To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/
tmp = regex.match(incoming)
result = tmp[1]
dg = DistGroup.find_by_id(1)

# dg = DistGroup.where(["dist_name = :u", { u: result }])


# puts dg.dist_name



x = 1

##########################################################################

## for each recipient encrypt and send
# Recipient.find_each do |recipient|
#
#  # Encrypt the message for Recipient
#   encrypted = `echo "#{incoming}" | gpg --no-batch -a -e -r "#{recipient.pub_key}"`
#
#  # Email Encrypted Message to Recipient
#   `echo "#{encrypted}" | mail -s "ENCRYPTED" #{recipient}.email`
#
# end
