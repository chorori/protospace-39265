class Prototype < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_one_attached :image
  # 一対一で紐づける

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  # 空の時に保存できなくする
end
