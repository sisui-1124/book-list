class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new
  end 

  def create
    book = Book.new(book_params)
    book.save!
    redirect_to books_url, notice: "ブック「＃｛book．name｝」を登録しました。"
  end

  private

  def book_params
    params.require(:book).permit(:name, :description)
  end
end
