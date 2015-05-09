class RenameNameToLowercase < ActiveRecord::Migration
  def change
  	rename_column :users, :Name, :name
  end
end
