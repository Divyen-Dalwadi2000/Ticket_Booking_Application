class CreateCinemas < ActiveRecord::Migration[7.1]
  def change
    create_table :cinemas do |t|
      t.string :cinema_name
      t.string :location
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
