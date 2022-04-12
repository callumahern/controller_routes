class Quiz < ApplicationRecord
  has_many :questions
  has_many :answers, through: :questions

  accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :answers, allow_destroy: true, reject_if: :all_blank


end
