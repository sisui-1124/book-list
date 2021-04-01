class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end 

  def create
    book = Book.new(book_params)
    book.save!
    redirect_to books_url, notice:  "ブック#「{book.name} 」を登録しました。"
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update!(book_params)
    redirect_to books_url,notice: "ブック「#{book.name}」を更新しました"
  end

  private

  def book_params
    params.require(:book).permit(:name, :description)
  end
end
