class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|
      t.integer :idholiday
      t.integer :idcalendar
      t.string :name
      t.string :description
      t.time :createdate
      t.time :updatedate
      t.boolean :enabled

      t.timestamps
    end
  end
end
