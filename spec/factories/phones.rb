FactoryGirl.define do
  factory :phone do
    association :contact
    # phone '123-555-1234'
    phone { Faker::PhoneNumber.phone_number }

    factory :home_phone do
      phone_type 'home'
    end

    factory :work_phone do
      phone_type 'work'
    end

    factory :mobile_phone do
      phone_type 'mobile'
    end

    # phone_type "MyString"
    # phone "MyString"
    # contact nil
  end
end
