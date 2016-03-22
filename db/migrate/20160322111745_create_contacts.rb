class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :string
      t.string :lastname
      t.string :string
      t.string :email
      t.string :string

      t.timestamps null: false
    end
  end
end
