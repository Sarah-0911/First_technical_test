class Movie < ApplicationRecord
  has_many :actors
  has_many :genres
end
