require_relative "post"

class PostsRepository
  def all
    posts = []

    sql = 'SELECT id, title, content, views, account_id FROM posts;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |post_db|
      post = Post.new
      post.id = post_db['id']
      post.title = post_db['title']
      post.content = post_db['content']
      post.views = post_db['views']
      post.account_id = post_db['account_id']

      posts << post
    end

    return posts
  end

  def find(id)
    sql = 'SELECT id, title, content, views, account_id FROM posts WHERE id = $1;'
    sql_params = [id]

    result_set = DatabaseConnection.exec_params(sql, sql_params)
    post_db = result_set[0]

    post = Post.new
      post.id = post_db['id']
      post.title = post_db['title']
      post.content = post_db['content']
      post.views = post_db['views']
      post.account_id = post_db['account_id']

    return post
  end

  def create(post)
    sql = 'INSERT INTO posts (title, content, views, account_id) VALUES ($1, $2, $3, $4);'
    sql_params = [post.title, post.content, post.views, post.account_id]

    DatabaseConnection.exec_params(sql, sql_params)

    return nil
  end

  def delete(title)
    sql = 'DELETE FROM posts WHERE title = $1;'
    sql_params = [title]

    DatabaseConnection.exec_params(sql, sql_params)

    return nil
  end
end