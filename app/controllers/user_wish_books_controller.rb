class UserWishBooksController < ApplicationController
    def create
        user_wish_book = UserWishBook.find_or_create_by(user_wish_book_params)
        render json: user_wish_book
    end

    def destroy
        user_wish_book = UserWishBook.find(params[:id])
        user_wish_book.destroy
        render json: user_wish_book
    end
    
    private

    def user_wish_book_params
        params.require(:user_wish_book).permit(:wish_list_book_id, :donatee_id)
    end
end
