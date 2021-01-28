class RenameAddressColumnInPeople < ActiveRecord::Migration[6.0]
  def change
    rename_column :people, :address, :street_address
  end
end
