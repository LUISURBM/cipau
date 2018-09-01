class CreateLocalities < ActiveRecord::Migration[5.2]
  def change
    create_table :localities do |t|
      t.string :name
      t.string :codlocality
      t.string :description
      t.time :createdat
      t.time :updatedat
      t.boolean :enabled
	  #t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
