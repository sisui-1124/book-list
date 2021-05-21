class BooksController < ApplicationController
  before_action :set_book, only: [:show,  :edit, :update, :destroy]

  def index
    @books = current_user.books
  end

  def new
    @book = Book.new
  end 

  def create
    @book = current_user.books.new(book_params)

    if @book.save
      redirect_to @book, notice: "ブック「#{@book.name}」を登録しました"      
    else
      render :new
    end  
  end

  def show
    current_user.books.find(params[:id])
  end

  def edit
    current_user.books.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update!(book_params)
    redirect_to books_url, notice: "ブック「#{book.name}」を更新しました"
  end

  def destroy
    current_user.books.find(params[:id])
    book.destroy
    redirect_to books_url, notice: "ブック「#{book.name}」を削除しました"
  end

  private

  def book_params
    params.require(:book).permit(:name, :description)
  end

  def set_book
    @book = current_user.books.find(params[:id])
  end

end