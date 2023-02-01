class BooksController < ApplicationController
  before_action :set_profile, only: %i[new create]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.profile = @profile
    @book.save
    redirect_to profile_path(@profile)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to profile_path(@book.profile), status: :see_other
  end

  private

  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def book_params
    params.require(:book).permit(:title, :year, :profile)
  end
end
