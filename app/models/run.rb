class Run < ApplicationRecord
  belongs_to :tumbler
  has_many_attached :images
end
