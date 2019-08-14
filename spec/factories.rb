FactoryBot.define do
    factory :author do
        firstname {"Joe"}
        lastname {"silva"}
    end

    factory :post do
        association :author
        title {"This is a title"}
        content {"This is a content"}
    end
end