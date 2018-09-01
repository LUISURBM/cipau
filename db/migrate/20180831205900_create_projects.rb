class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :idproject
      t.integer :idclient
      t.string :name
      t.string :description
      t.time :startdate
      t.integer :enddate
      t.time :createdate
      t.time :updatedate
      t.boolean :enabled


      t.timestamps
    end
  end
end
