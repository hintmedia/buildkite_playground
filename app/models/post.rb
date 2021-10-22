class Post < ApplicationRecord
  # summary
  def summary
    [title, truncated_body].compact.join(' - ')
  end

  def truncated_body
    body&.truncate(25, separator: ' ')
  end
end

