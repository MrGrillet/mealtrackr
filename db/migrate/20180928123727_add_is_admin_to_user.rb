class AddIsAdminToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_admin, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :goal, :string
    add_column :users, :biography, :text
    add_column :users, :profile_visibility, :string
    add_column :users, :website, :string
    add_column :users, :notifications, :string
  end
end
