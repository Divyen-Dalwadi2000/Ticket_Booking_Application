class Cinema < ApplicationRecord
  belongs_to :movie
  has_many :shows
end
