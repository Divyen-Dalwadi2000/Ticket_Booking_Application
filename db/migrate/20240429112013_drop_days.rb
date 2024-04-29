class DropDays < ActiveRecord::Migration[7.1]
  def change
    drop_table :days ,if_exists: true
  end
end
