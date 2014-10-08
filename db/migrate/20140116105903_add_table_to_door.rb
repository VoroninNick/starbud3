class AddTableToDoor < ActiveRecord::Migration
  def change
    add_column :doors, :table, :text
  end
end
