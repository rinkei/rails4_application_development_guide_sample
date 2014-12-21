class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  def index
    @query = Query.new(params[:query])
    @books = Book.search(@query)
  end

  def show
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end
end
