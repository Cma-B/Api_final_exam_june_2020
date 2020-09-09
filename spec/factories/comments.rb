FactoryBot.define do
  factory :comment do
    body {"I realy recommend that article to young parents."}
    association :article, factory: :articles
  end
end
