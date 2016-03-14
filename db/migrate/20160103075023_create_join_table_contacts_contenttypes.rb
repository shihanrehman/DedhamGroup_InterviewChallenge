class CreateJoinTableContactsContenttypes < ActiveRecord::Migration
  def change
    create_join_table :contacts, :contenttypes do |t|
      # t.index [:contact_id, :contenttype_id]
      # t.index [:contenttype_id, :contact_id]
    end
  end
end
