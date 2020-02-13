class BooksController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        books = Book.all
        if books
            options = {
                include: [:users, :grabs]
            }
            render json: BookSerializer.new(books, options), status: :ok
        else
            render json: {message: "Books not found"}, status: :not_found
        end
    end

    
end
