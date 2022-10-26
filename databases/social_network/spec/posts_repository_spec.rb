require "posts_repository"

RSpec.describe PostsRepository do
  def reset_posts_table
    seed_sql = File.read('spec/seeds_social_network.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_posts_table
  end

  it "returns all posts" do
    repo = PostsRepository.new
    posts = repo.all

    expect(posts.length).to eq 3
    expect(posts.first.id).to eq '1'
    expect(posts.first.title).to eq 'Baking #1'
    expect(posts.first.content).to eq 'Today I made a cake.'
    expect(posts.first.views).to eq '2'
    expect(posts.first.account_id).to eq '1'
  end

  it "returns the single post Baking #2" do
    repo = PostsRepository.new
    post_2 = repo.find(2)

    expect(post_2.title).to eq 'Baking #2'
    expect(post_2.content).to eq 'Today I made a cookies.'
    expect(post_2.views).to eq '4'
    expect(post_2.account_id).to eq '1'
  end

  it "creates a new post" do
    repo = PostsRepository.new

    new_post = Post.new
    new_post.title = 'Gaming #1'
    new_post.content = 'Today I played Animal Crossing'
    new_post.views = '25'
    new_post.account_id = '2'

    repo.create(new_post)

    all_posts = repo.all

    expect(all_posts).to include(
      have_attributes(
        title: new_post.title,
        content: new_post.content,
        views: new_post.views,
        account_id: new_post.account_id
      )
    )
  end

  it "deletes a post by title" do
    repo = PostsRepository.new
    repo.delete('Baking #2')
    posts = repo.all

    expect(posts.length).to eq 2
    expect(posts[1].title).to eq 'Hobby #1'
  end
end