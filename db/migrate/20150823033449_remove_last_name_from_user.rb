class RemoveLastNameFromUser < ActiveRecord::Migration
  def change
      remove_column :users, :last_name
  end
end
