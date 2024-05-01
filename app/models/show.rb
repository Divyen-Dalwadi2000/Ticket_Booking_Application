class Show < ApplicationRecord
  belongs_to :cinema
  enum show_type: { "DOLBY 7.1" => 0 , "LASER DOLBY 7.1" => 1 , "LASER DOLBY 5.1" => 2  }
  validate :show_time_within_range

  private

  def show_time_within_range
    unless show_time.blank? || (show_time.hour >= 9 && show_time.hour < 24) || (show_time.hour == 0 && show_time.min <= 30)
      errors.add(:show_time, "must be between morning 9:00 AM and night 12:30 AM")
    end
  end
end
