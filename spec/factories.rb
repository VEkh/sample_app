Factory.define :user do |user|
	user.name										"Vidal Ekechukwu"											
	user.email									"vekechuk@example.com"
	user.password								"foobar"
	user.password_confirmation 	"foobar"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end
