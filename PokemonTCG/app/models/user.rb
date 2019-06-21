
class User < ApplicationRecord
    has_secure_password
    has_many :cards
    has_many :decks, through: :cards

end
