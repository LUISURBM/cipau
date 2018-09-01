class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :idclient
      t.string :name
      t.string :codlocality
      t.string :description
      t.time :createdate
      t.time :updatedate
      t.boolean :enabled

      t.timestamps
    end
  end
end
