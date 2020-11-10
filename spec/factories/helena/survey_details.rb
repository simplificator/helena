FactoryBot.define do
  factory :survey_detail, class: Helena::SurveyDetail do
    sequence(:title) { |n| "Survey #{n}, #{Faker::Lorem.words(number: 3).join(' ')}?" }
    sequence(:description) { Faker::Lorem.paragraphs(number: 3).join(' ') }
    version
  end
end
