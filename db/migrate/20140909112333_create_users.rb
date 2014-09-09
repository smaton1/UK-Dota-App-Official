class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :steam_nickname
      t.integer :steam_id
      t.string :steam_image

      t.timestamps
    end
  end
end
