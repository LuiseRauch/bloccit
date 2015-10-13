class Comment < ActiveRecord::Base
  belongs_to :post
  # def post
  #     Post.find(self.post_id)
  # end
end


# @comment.post
