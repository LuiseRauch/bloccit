include RandomData

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

post = Post.find_or_create_by(title: "My unique title", body: "This is my unique post.")

Comment.find_or_create_by(post: post, body: "This is my unique comment.")
