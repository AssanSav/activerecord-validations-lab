class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with TitleValidator
    #validate :clickbait

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "%{value} Must be Fiction or Non-Fiction"}

    # def clickbait?
    #     #binding.pry
    #     if self.title != nil && (!self.title.match("You Won't" || "Secret" || [0..9] || "Guess"))
    #         errors.add(:title, "title must be clickbait")
    #     end
    # end
end
