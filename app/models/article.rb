class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id

  def to_label
    title
  end
end
