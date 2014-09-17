class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :steam_id

      t.timestamps
    end
  end
end
