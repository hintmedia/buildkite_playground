class Post < ApplicationRecord
  def summary
    "#{title} - #{body.truncate(25, separator: ' ')}"
  end
end
