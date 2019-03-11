class RemoveUsersFromMemes < ActiveRecord::Migration[5.2]
  def change
    remove_column :memes, :user, :reference
  end
end
