class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name #animal name column
      #t.string :email #not needed 
      t.timestamps null: false
    end
  end
end
