FactoryBot.define do
  factory :article do
    title { Faker::TheITCrowd.quote }
    author { Faker::ParksAndRec.character }
    description { Faker::Lovecraft.paragraphs(1) }
    url { Faker::Internet.url }
  end
end
