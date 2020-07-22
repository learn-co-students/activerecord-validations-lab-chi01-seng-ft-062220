class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"] }
    validate :clickbait_y

#     CLICKBAIT_PATTERNS = [
#         /Won't Believe/i,
#         /Secret/i,
#         /Top [0-9]*/i,
#         /Guess/i
#       ]
    
#     def clickbait_y
#         if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
#         errors.add(:title, "isn't clickbait-y enough.")
#     end
# end
end
