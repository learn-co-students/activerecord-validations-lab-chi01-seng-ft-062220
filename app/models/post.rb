class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {:minimum => 250}
    validates :summary, length: {:maximum => 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :is_clickbait?

    CLICKBAITY_TITLES = [
        /Won't Believe/i,
        /Secret/i,
        /Top [0-9]*/i,
        /Guess/i
      ]

      def is_clickbait?
        if CLICKBAITY_TITLES.none? {|pattern| pattern.match title}
            errors.add(:title, "Clickbait")
        end
      end
end