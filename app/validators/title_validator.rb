class  TitleValidator < ActiveModel::Validator 

    def validate(record)
        if record.title != nil && (!record.title.match("You Won't" || "Secret" || [0..9] || "Guess"))
            record.errors[:title] << "title must be clickbait"
        end
    end
end