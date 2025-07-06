class Post < ApplicationRecord
    has_one_attached :before_image
    has_one_attached :after_image
end
