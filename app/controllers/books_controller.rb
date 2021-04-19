class BooksController < ApplicationController
  def index
   @user = current_user
   @books = Book.all
  end

  def show
    @user = current_user
    @book = Book.find(params[:id])
    @newbook = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end


  def new
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    if book.save
      redirect_to book_path(book.id)
      flash[:notice]="You have created book successfully."
    else
      redirect_to books_path
    end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
  params.require(:book).permit(:title,:body)
  end

end
