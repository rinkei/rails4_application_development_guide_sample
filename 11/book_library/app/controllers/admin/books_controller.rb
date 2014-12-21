class Admin::BooksController < ApplicationController
  before_action :set_book, only: %w(show edit update destroy)

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to admin_book_path(@book), notice: 'Book was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @book.update(book_params)
      redirect_to admin_book_path(@book), notice: 'Book was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @book.destroy
    redirect_to admin_books_url
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :outline)
    end
end
