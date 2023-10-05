require './book'
require './person'
require './rental'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def create_book
    print 'Title: '
    book_title = gets.chomp
    print 'Author: '
    book_author = gets.chomp
    new_book = Book.new(book_title, book_author)
    @books << new_book
    puts 'Book created successfully'
  end

  def list_all_books
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  end
end
