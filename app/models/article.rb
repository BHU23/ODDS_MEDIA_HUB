class Article < ApplicationRecord
    has_one_attached :image

    validates :title, presence: true, length: { minimum: 3 }, title_restriction: true
    validates :body, presence: true
   end