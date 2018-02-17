require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "#{Post.count}"
Post.find_or_create_by(title: "Stuck on Checkpoint 18", body: "I can't get npm to install correctly!")
puts "#{Post.count}"

puts "#{Comment.count}"
Comment.find_or_create_by(body: "Oh brother. Let's troubleshoot!", post: @post)
puts "#{Comment.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
