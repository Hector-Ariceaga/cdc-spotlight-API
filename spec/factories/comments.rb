FactoryBot.define do
  factory :comment do
    content { Faker::TvShow::HowIMetYourMother.catch_phrase }
    review { Faker::Boolean.boolean }
    article
  end
end
