class Author < ActiveRecord::Base
    validates :name, presence: true, length: {minimum: 1}
    validates :email, uniqueness: true

end
