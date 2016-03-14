class CreateContenttypes < ActiveRecord::Migration
  def change
    create_table :contenttypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
