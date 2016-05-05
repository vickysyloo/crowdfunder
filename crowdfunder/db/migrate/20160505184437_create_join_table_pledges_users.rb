class CreateJoinTablePledgesUsers < ActiveRecord::Migration
  def change
    create_join_table :pledges, :users
  end
end
