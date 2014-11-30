source 'https://rubygems.org'

#my gemset is: rvm use 2.1.4@my_rails_4_0
ruby '2.1.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'
gem 'bootstrap-sass','3.3.1.0'
# Use sqlite3 as the database for Active Record
group :development, :test do
	gem 'sqlite3','1.3.10'
	gem 'rspec-rails','3.1.0'
	gem 'guard-rspec', '4.3.1'
	gem 'spork-rails', '4.0.0'
	gem 'guard-spork','2.0.1'
	gem 'childprocess', '0.5.5'	
	gem 'rspec-core', '3.1.7'
end
group :test do
	gem 'selenium-webdriver', '2.44.0'
	gem 'capybara', '2.4.4'	
end
group :production do
	gem 'pg', '0.17.1'
	gem 'rails_12factor','0.0.3'
end

gem 'sass-rails', '~> 4.0.3'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails', '3.1.2'

gem 'turbolinks','2.5.1'

gem 'jbuilder', '~> 2.0'

group :doc do
	gem 'sdoc', '0.4.1', require: false
end
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
group :development do
  gem 'spring', '1.1.3'      
end
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

