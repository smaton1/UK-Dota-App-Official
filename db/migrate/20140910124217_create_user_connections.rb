class CreateUserConnections < ActiveRecord::Migration
  def change
    create_table :user_connections do |t|
      t.boolean :friend
      t.integer :user_1_id
      t.integer :user_2_id

      t.timestamps
    end
  end
end
