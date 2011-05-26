Factory.define :user do |user|
	user.name										"Vidal Ekechukwu"											
	user.email									"vekechuk@example.com"
	user.password								"foobar"
	user.password_confirmation 	"foobar"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
	micropost.content "Foo bar"
	# creates the association that microposts belong to users
	micropost.association :user
end
