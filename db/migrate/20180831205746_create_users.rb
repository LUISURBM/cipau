class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :iduser
      t.string :name
      t.string :codlocality
      t.string :description
      t.string :email
      t.string :username
      t.string :password
      t.time :createdate
      t.time :updatedate
      t.boolean :enabled

      t.timestamps
    end
  end
end
