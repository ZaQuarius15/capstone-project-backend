class User < ApplicationRecord

    has_secure_password

    has_many :user_lib_books
    has_many :library_books, source: :book, through: :user_lib_books

    has_many :user_wish_books
    has_many :wished_books, source: :book, through: :user_wish_books

    has_many :reserved_books

    has_many :reserved_messages

    has_many :comments

    has_many :comment_likes
    
    has_many :messages

    has_many :lib_book_history_items

end
