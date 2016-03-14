class CreateJoinTableContactsMedia < ActiveRecord::Migration
  def change
    create_join_table :contacts, :media do |t|
      # t.index [:contact_id, :medium_id]
      # t.index [:medium_id, :contact_id]
    end
  end
end
