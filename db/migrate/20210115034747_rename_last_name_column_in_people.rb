class RenameLastNameColumnInPeople < ActiveRecord::Migration[6.0]
  def change
    rename_column :people, :Last_name, :last_name
  end
end
