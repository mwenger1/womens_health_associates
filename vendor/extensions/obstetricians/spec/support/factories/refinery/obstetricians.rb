
FactoryGirl.define do
  factory :obstetrician, :class => Refinery::Obstetricians::Obstetrician do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

