class CreateUserlocalityroles < ActiveRecord::Migration[5.2]
  def change
    create_table :userlocalityroles do |t|
      t.integer :iduserlocalityrole
      t.integer :idrole
      t.integer :iduser

      t.timestamps
    end
  end
end
