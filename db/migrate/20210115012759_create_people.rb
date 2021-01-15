class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :Last_name
      t.string :relationship
      t.date :birthday
      t.string :address
      t.string :avatar_url

      t.timestamps
    end
  end
end
