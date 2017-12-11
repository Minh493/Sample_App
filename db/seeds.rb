User.create!(name: "Hà Minh", email: "haminh1706@gmail.com",password: "17061994",
  password_confirmation: "17061994", admin: true,
  activated: true, activated_at: Time.zone.now)
10.times do |n|
  name  = Faker::Name.name
  email = "ruby-#{n+1}@gmail.com"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password,
  activated: true, activated_at: Time.zone.now)
  users = User.order(:created_at).take(6)
2.times do
  content = Faker::Lorem.sentence(5)
  users.each {|user| user.microposts.create!(content: content)}
  end
end
# Following relationships
  users = User.all
  user = users.first
  following = users[2..50]
  followers = users[3..40]
  following.each {|followed| user.follow(followed)}
  followers.each {|follower| follower.follow(user)}
