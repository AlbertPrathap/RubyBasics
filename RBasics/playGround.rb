class BookInfo
    def initialize(title,author)
        @title=title
        @author=author
    end

    def book_info
        puts "Book Info: #{@title}, #{@author}"
    end
end

book = BookInfo.new("Lost Stars","Albert Prathap")

book.book_info
