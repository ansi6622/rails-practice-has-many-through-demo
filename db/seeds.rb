Post.delete_all
Tag.delete_all
Tagging.delete_all

posts = 34.times.map{Post.create!(name: Faker::Company.bs)}
tags = 27.times.map{Tag.create!(name: Faker::Hacker.adjective)}

posts.each do |post|
  tags.sample(rand(5)).each do |tag|
    Tagging.create!(
      post_id: post.id,
      tag_id: tag.id
    )
  end
end
