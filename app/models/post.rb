class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(fiction non-fiction)}


    def validate(post)
        validates :post, exclusion: { in:%w("Won't Believe", "Secret", "Top [number]", "Guess")}
    end
end
