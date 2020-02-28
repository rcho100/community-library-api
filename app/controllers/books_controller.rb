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

    def borrow
        book = Book.find_by_id(book_params[:id])
        if book.available
            book.available = !book.available
            grab = Grab.create(user_id: current_user.id, book_id: book.id)
            book.save
            options = {
                include: [:users, :grabs]
            }
            render json: BookSerializer.new(book, options), status: :ok
        else
            render json: {message: "Book not found"}, status: :not_found
        end
    end
    
    def return
        book = Book.find_by_id(book_params[:id])
        if book && !book.available
            book.available = !book.available
            book.save
            options = {
                include: [:users, :grabs]
            }
            render json: BookSerializer.new(book, options), status: :ok
        else
            render json: {message: "Book not found"}, status: :not_found
        end
    end

    private
    def book_params
        params.require(:book).permit(:id)
    end
end
