class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.integer :idrole
      t.string :name
      t.string :description
      t.time :createdate
      t.time :updatedate
      t.boolean :enabled

      t.timestamps
    end
  end
end
