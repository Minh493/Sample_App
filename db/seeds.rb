User.create!(name: "Hà Minh", email: "haminh1706@gmail.com",password: "17061994",
  password_confirmation: "17061994", admin: true,
  activated: true, activated_at: Time.zone.now)
99.times do |n|
  name  = Faker::Name.name
  email = "ruby-#{n+1}@gmail.com"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password,
  activated: true, activated_at: Time.zone.now)
end
