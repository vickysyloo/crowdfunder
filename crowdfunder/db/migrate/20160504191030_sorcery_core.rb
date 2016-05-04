class SorceryCore < ActiveRecord::Migration
  def change
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string
    remove_column :users, :password, :string
    remove_column :users, :owner, :boolean
    add_index :users, :email, unique: true
  end
end
