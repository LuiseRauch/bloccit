class Rating < ActiveRecord::Base
  before_save { self.severity ||= :PG }

  enum severity: [ :PG, :PG13, :R ]

  has_many :topics
  has_many :posts

  def self.update_rating(rating)
    Rating.find_or_create_by(severity: rating.to_i)
  end
end
