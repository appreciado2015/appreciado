class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :radio_option
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps null: false
    end
  end
end
