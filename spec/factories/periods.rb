FactoryBot.define do
  factory :period do
    month { 5 }
    year { 2020 }
    organisation { FactoryBot.create :organisation }
  end
end
