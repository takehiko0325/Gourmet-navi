class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :shop_genre
  has_one_attached :image

with_options presence: true do
  validates :genre_id, numericality: { other_than: 1 } 
end
end