class Shop < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :prefecture
  belongs_to :shop_genre
  has_one_attached :image

with_options presence: true do
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 100000} 
  validates :price,:phone_number , format:{with: /\A[0-9]+\z/,message: "を半角数字で入力して下さい"}
  validates :shop_genre_id, numericality: { other_than: 1 } 
  validates :city,:explanation,:name ,format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角日本語で入力して下さい"}

end
end