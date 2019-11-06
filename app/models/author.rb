class Author < ActiveRecord::Base

    # The name cannot be blank
    validates :name, presence: true
    # The e-mail is unique
    validates :email, uniqueness: true
end
