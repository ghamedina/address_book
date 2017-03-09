class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
