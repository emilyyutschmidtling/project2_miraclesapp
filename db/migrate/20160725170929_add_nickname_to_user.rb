class AddNicknameToUser < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
