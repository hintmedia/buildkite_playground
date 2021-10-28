class Leg < ApplicationRecord
  # summary
  def summary
    [name, truncated_description].compact.join(' - ')
  end

  def truncated_description
    description&.truncate(25, separator: ' ')
  end
end

