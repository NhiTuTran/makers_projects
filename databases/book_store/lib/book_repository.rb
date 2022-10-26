require_relative "book"

class BookRepository
  def all
    books = []

    sql = 'SELECT id, title, author_name from books;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |book_db|
      book = Book.new

      book.id = book_db['id']
      book.title = book_db['title']
      book.author_name = book_db['author_name']

      books << book
    end

    return books
  end
end