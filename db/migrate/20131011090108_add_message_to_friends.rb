class AddMessageToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :message, :text
  end
end
