require 'faker'

namespace :db do
	# desc means describe
	desc "Fill database with sample data"
	task :populate => :environment do
		# resets the database (invoke make it happen)
		Rake::Task['db:reset'].invoke
		User.create!(:name => "Example User",
								 :email => "example@railstutorial.org",
								 :password => "foobar",
								 :password_confirmation => "foobar")
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = "password"
			User.create!(:name => name,
									 :email => email,
									 :password => password,
									 :password => password)
		end
	end

end
