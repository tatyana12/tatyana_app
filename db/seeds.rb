 User.create!(name:  "Some Dude",
             email: "dputnam@ccsf.edu",
              password:              "t0pS3cret!",
             password_confirmation: "t0pS3cret!",
             activated: true,
             activated_at: Time.zone.now)

 User.create!(name:  "NEW ADMIN USER",
              email: "ADMIN_USER@SOMEDOMAIN.COM",
              password:              "SECRET_PASSWORD",
             password_confirmation: "SECRET_PASSWORD",
              admin:     true,
             activated: true,
              activated_at: Time.zone.now)
 
 User.create!(name:  "Example User",
              email: "example@railstutorial.org",
              password:              "fooBar",
             password_confirmation: "fooBar",
             admin:     true,
             activated: true,
              activated_at: Time.zone.now)
 
99.times do |n|
  name  = Faker::Name.name
   email = "example-#{n+1}@railstutorial.org"
   password = "password_XyZ734_" 
   User.create!(name:  name,
              email: email,
               password:              password,
               password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
 end
 
 users = User.order(:created_at).take(6)
 50.times do
   content = Faker::Lorem.sentence(5)
   users.each { |user| user.microposts.create!(content: content) }
 end
