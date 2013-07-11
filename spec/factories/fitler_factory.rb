

FactoryGirl.define do
  factory :filter, class: Filter do
    azimuth 30
    elevation 0
    ear 1
  end
  factory :filter2, class: Filter do
    azimuth -30
    elevation 0
    ear 0
  end
end

