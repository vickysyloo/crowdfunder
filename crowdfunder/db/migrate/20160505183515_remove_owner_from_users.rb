class RemoveOwnerFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :owner, :boolean
  end
end
