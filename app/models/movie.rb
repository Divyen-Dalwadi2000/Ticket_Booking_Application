class Movie < ApplicationRecord
    has_one_attached :image





    
    validates :image , presence: true
    validates :name , presence: true
    validates :description , presence: true
    validates :release_date , presence: true
    validates :duration_hour , presence: true
    validates :duration_minute , presence: true
end
  