class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.integer :idcalendar
      t.string :codlocality
      t.string :name
      t.string :description
      t.string :validunit
      t.time :createdate
      t.time :updatedate
      t.boolean :enabled

      t.timestamps
    end
  end
end
