class ChangeUniquePropartyAtUser < ActiveRecord::Migration
  def change
    remove_index :users, :login
  end
end
