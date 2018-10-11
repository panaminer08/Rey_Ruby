class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :encrypted_password, null: false, default: ""

      t.timestamps
    end
  end
end
