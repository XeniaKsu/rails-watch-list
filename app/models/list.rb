class List < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
