class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name #name of animal

      t.timestamps null: false
    end
  end
end
