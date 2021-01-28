class AddColumnsToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :city, :string
    add_column :people, :state, :string
    add_column :people, :email_address, :string
    add_column :people, :postal_code, :string
  end
end
