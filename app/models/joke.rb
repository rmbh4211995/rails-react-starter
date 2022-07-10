class Joke < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :author, presence: true
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
end
