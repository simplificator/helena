FactoryBot.define do
  factory :sub_question, class: Helena::SubQuestion do
    sequence(:text) { |n| "Question #{n}, #{Faker::Lorem.words(number: 3).join(' ')}?" }
    sequence(:code) { |n| "y#{n}" }
    question
  end
end
