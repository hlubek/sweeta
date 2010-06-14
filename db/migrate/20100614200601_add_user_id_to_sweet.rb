class AddUserIdToSweet < ActiveRecord::Migration
  def self.up
    add_column :sweets, :user_id, :integer
  end

  def self.down
    remove_column :sweets, :user_id
  end
end
