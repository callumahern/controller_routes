class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers

  accepts_nested_attributes_for :answers, allow_destroy: true, reject_if: :all_blank

end
