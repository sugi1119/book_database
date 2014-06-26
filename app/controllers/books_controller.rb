class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    book = Book.create book_params
    redirect_to book
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find params[:id]

  end

  def show
    @book = Book.find params[:id]
  end

  def update
    book = Book.find params[:id]
    book.update book_params
    redirect_to book
  end

  def destroy
    book = Book.find params[:id]
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
      params.require(:book).permit(:title, :year, :page, :genre, :isbn, :image, :author_id)
  end
end

#       books GET    /books(.:format)            books#index
#             POST   /books(.:format)            books#create
#    new_book GET    /books/new(.:format)        books#new
#   edit_book GET    /books/:id/edit(.:format)   books#edit
#        book GET    /books/:id(.:format)        books#show
#             PATCH  /books/:id(.:format)        books#update
#             PUT    /books/:id(.:format)        books#update
#             DELETE /books/:id(.:format)        books#destroy

# create_table "books", force: true do |t|
#     t.string   "title"
#     t.string   "year"
#     t.string   "page"
#     t.string :genre
#     t.string   "isbn"
#     t.text     "image"
#     t.integer  "author_id"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#   end