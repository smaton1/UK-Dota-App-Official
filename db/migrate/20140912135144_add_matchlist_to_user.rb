class AddMatchlistToUser < ActiveRecord::Migration
  def change
    add_column :users, :matchlist, :string
  end
end
