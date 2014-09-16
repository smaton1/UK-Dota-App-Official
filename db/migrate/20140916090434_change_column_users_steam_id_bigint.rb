class ChangeColumnUsersSteamIdBigint < ActiveRecord::Migration
  def change
    change_column :users, :steam_id, :bigint
  end
end
