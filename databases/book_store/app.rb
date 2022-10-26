require_relative 'lib/database_connection'
require_relative 'lib/book_repository'

DatabaseConnection.connect('book_store')

repo = BookRepository.new
books = repo.all
books.each do |book_db|
  puts "#{book_db.id} - #{book_db.title} - #{book_db.author_name}"
end

=begin
sql = 'SELECT id, title, author_name FROM books;'
result = DatabaseConnection.exec_params(sql, [])

result.each do |book_db|
  p book_db
end
=end