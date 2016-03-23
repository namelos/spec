FactoryGirl.define do
  factory :contact do
    firstname { Faker:: Name.first_name }
    lastname { Faker:: Name.last_name }
    email { Faker:: Internet.email }

    after(:build) do |contact|
      [:home_phone, :work_phone, :mobile_phone].each do |phone|
        contact.phones << build(:phone,
                                phone_type: phone,
                                contact: contact)
      end
    end

    # firstname 'John'
    # lastname 'Doe'
    # sequence(:email) { |n| "johndoe#{n}@example.com" }

    # firstname "MyString"
    # string "MyString"
    # lastname "MyString"
    # string "MyString"
    # email "MyString"
    # string "MyString"
  end
end
