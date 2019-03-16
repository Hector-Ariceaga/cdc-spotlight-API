FactoryBot.define do
  factory :article do
    title { Faker::TvShows::TheITCrowd.quote }
    author { Faker::TvShows::ParksAndRec.character }
    description { Faker::Books::Lovecraft.paragraphs(1) }
    content {Faker::Books::Lovecraft.paragraphs(2)}
    url { Faker::Internet.url }
  end
end
