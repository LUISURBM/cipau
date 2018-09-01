class RemoveLastNameFromInstructors < ActiveRecord::Migration[5.2]
  def change
  add_column :localities, :createdate, :time
  add_column :localities, :updatedate, :time
  remove_column :localities, :createdat, :updatedat
  end
end
