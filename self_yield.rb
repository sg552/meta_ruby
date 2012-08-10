class Book
  attr_accessor :title, :published_at
  def initialize &block
    yield self
  end
end

book = Book.new do |b|
  b.title = "diablo"
  b.published_at = "2012-12-12"
end

puts book.inspect
