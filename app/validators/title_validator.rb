class TitleValidator < ActiveModel::Validator
    def validate(record)
        keywords = ["Won't Believe", "Secret", "Top", "Guess"]
        unless record.title != nil && keywords.any? {|keyword| record.title.include?(keyword)}
            record.errors[:title] << "Title is missing or not clickbait-y enough!"
        end
    end
end