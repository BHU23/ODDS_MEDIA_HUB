class TitleRestrictionValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        restricted_words = ["fuck", "sexist", "hateful"]

        if restricted_words.any? { |word| value.to_s.downcase.include?(word) }
            record.errors.add(attribute, "contains restricted words")
        end
    end
end