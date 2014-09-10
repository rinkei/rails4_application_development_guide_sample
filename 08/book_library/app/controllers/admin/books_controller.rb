class Admin::BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(params.require(:book).permit(:title, :author))
    @book.save
    redirect_to admin_path
  end
end
