FactoryBot.define do
  factory :workout do
    name {"Core & legs"}
    description {"Burning fat and building muscle in the core and leg areas of the body."}
    association(:user)
  end
end
