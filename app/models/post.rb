class Post < ActiveRecord::Base
  has_many :comments
  #
  # def title
  #     if self.id % 5 == 0
  #       "SPAM"
  #     else
  #       self[:title]
  #     end
  # end

  # def comments
  #     Comment.where(post_id: self.id)
  # end
end

# @post.comments
