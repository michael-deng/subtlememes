class Meme < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tag
end
