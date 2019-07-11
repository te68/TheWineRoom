class User

    attr_accessor :name

    has_many :reviews

end

class Review

    belongs_to :user

    attr_accessor :rating, :content

end
