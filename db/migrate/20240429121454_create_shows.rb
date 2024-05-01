class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.integer :show_type
      t.datetime :show_time
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
