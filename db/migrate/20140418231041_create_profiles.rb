class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :last_name
      t.string :first_name
      t.string :city
      t.integer :user_id

      t.timestamps
    end
  end
end
