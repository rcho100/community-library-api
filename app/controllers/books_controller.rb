class BooksController < ApplicationController
    def index
        books = Book.all
        if books
            render json: books, status: 200
        else
            render json: {message: "Books not found"}
        end
    end

    
end
