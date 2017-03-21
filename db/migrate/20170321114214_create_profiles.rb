class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :postal_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
