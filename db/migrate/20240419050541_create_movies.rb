class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.date :release_date
      t.integer :duration_hour
      t.integer :duration_minute

      t.timestamps
    end
  end
end
