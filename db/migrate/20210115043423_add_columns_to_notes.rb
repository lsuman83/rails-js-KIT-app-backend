class AddColumnsToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :user, null: false, foreign_key: true
    add_reference :notes, :person, null: false, foreign_key: true
  end
end
