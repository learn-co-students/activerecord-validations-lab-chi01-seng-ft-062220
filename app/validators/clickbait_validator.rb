class ClickbaitValidator < ActiveRecord::Validator
    def validate(record)
        unless record.title.match?(//)
          record.errors[:title] << "Not Clickbait!!"
        end
      end
end