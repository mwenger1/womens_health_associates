
FactoryGirl.define do
  factory :midwife, :class => Refinery::Midwives::Midwife do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

