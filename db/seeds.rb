# db/seeds.rb
User.destroy_all
Category.destroy_all
Post.destroy_all
PostCategory.destroy_all
Comment.destroy_all

# Create Users
user1 = User.create!(username: 'alice', email: 'alice@example.com')
user2 = User.create!(username: 'bob', email: 'bob@example.com')
user3 = User.create!(username: 'carol', email: 'carol@example.com')

# Create Categories
category1 = Category.create!(name: 'Technology')
category2 = Category.create!(name: 'Lifestyle')
category3 = Category.create!(name: 'Travel')

# Create Posts
post1 = Post.create!(title: 'The Future of AI', content: 'Artificial Intelligence is evolving rapidly...', created_at: '2024-08-01', updated_at: '2024-08-01')
post2 = Post.create!(title: 'Healthy Living Tips', content: 'To maintain a healthy lifestyle, you should...', created_at: '2024-08-02', updated_at: '2024-08-02')
post3 = Post.create!(title: 'Top 10 Travel Destinations', content: 'Here are the top 10 places you should visit...', created_at: '2024-08-03', updated_at: '2024-08-03')

# Associate Posts with Categories
PostCategory.create!(post: post1, category: category1)
PostCategory.create!(post: post2, category: category2)
PostCategory.create!(post: post3, category: category3)
PostCategory.create!(post: post3, category: category1) # Post 3 belongs to both Travel and Technology

# Create Comments
Comment.create!(content: 'Great article!', user: user1, post: post1, created_at: '2024-08-01', updated_at: '2024-08-01')
Comment.create!(content: 'Very informative, thanks for sharing.', user: user2, post: post1, created_at: '2024-08-02', updated_at: '2024-08-02')
Comment.create!(content: 'I will definitely try these tips!', user: user3, post: post2, created_at: '2024-08-02', updated_at: '2024-08-02')
Comment.create!(content: 'Can’t wait to visit these places!', user: user1, post: post3, created_at: '2024-08-03', updated_at: '2024-08-03')
