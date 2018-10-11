class CreateFlashes < ActiveRecord::Migration[5.2]
  def change
    create_table :flashes do |t|
      t.references :admin

      t.timestamps
    end
  end
end
