# source 'https://rubygems.org'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'

gem 'haml'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Puma as the app server
gem 'puma' #, '~> 3.4'
# Use SCSS for stylesheets
gem 'sass-rails', '5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.2.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.2.2'

# jquery rails
gem 'jquery-rails', '4.3.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.7.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
gem 'devise'
# Use ActiveModel has_secure_password
gem 'bcrypt', '3.1.11'
gem 'bootstrap-sass', '3.3.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.13'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '9.0.6', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
 
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
end

group :development do
<<<<<<< HEAD
    gem 'better_errors'
  gem 'rails_layout'
=======
>>>>>>> e1fe6f815a4867265d81019270bc1cec102319fd
  gem 'web-console', '~> 2.0'
  gem 'listen',                '3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '2.0.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem 'database_cleaner'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'rails-controller-testing'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg' # for Heroku deployment
  gem 'rails_12factor'
end
<<<<<<< HEAD

# ======================
# ruby '2.3.1'
# gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# gem 'sqlite3'
# gem 'puma', '~> 3.0'
# gem 'sass-rails', '~> 5.0'
# gem 'uglifier', '>= 1.3.0'
# gem 'coffee-rails', '~> 4.2'
# gem 'jquery-rails'
# gem 'turbolinks', '~> 5'
# gem 'jbuilder', '~> 2.5'
# group :development, :test do
#   gem 'byebug', platform: :mri
# end
# group :development do
#   gem 'web-console'
#   gem 'listen', '~> 3.0.5'
#   gem 'spring'
#   gem 'spring-watcher-listen', '~> 2.0.0'
# end
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# gem 'bootstrap-sass'
# gem 'devise'
# gem 'high_voltage'
# group :development do
#   gem 'better_errors'
#   gem 'rails_layout'
#   gem 'spring-commands-rspec'
# end
# group :development, :test do
#   gem 'factory_girl_rails'
#   gem 'faker'
#   gem 'rspec-rails'
# end
# group :test do
#   gem 'capybara'
#   gem 'database_cleaner'
#   gem 'launchy'
#   gem 'selenium-webdriver'
# end
# =======

# git_source(:github) do |repo_name|
#   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
#   "https://github.com/#{repo_name}.git"
# end

# #ruby 2.3.0

# # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '~> 5.1.4'

# # Use Puma as the app server
# gem 'puma', ' 3.9.1'
# # Use SCSS for stylesheets
# gem 'sass-rails', '5.0.6'
# # Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '3.2.0'
# # See https://github.com/rails/execjs#readme for more supported runtimes
# # gem 'therubyracer', platforms: :ruby

# # Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '4.2.2'

# # jquery rails
# gem 'jquery-rails', '4.3.1'
# # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '5.0.1'
# # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '2.7.0'
# # Use Redis adapter to run Action Cable in production
# # gem 'redis', '~> 3.0'
# # Use ActiveModel has_secure_password
# # gem 'bcrypt', '~> 3.1.7'

# # Use Capistrano for deployment
# # gem 'capistrano-rails', group: :development

# group :development, :test do
#   # Use sqlite3 as the database for Active Record
#   gem 'sqlite3', '1.3.13'
#   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
#   gem 'byebug', '9.0.6', platforms: [:mri, :mingw, :x64_mingw]
#   # Adds support for Capybara system testing and selenium driver
#   gem 'capybara', '~> 2.13'
#   gem 'selenium-webdriver'
#   gem 'rspec-rails'
# end

# group :development do
#   # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
#   gem 'web-console', '3.5.1'
#   gem 'listen', '3.1.5'
#   # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#   gem 'spring', '2.0.2'
#   gem 'spring-watcher-listen', '2.0.1'
# end

# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# group :test do
#   gem 'cucumber-rails', :require => false
#   gem 'cucumber-rails-training-wheels'
# end

# group :production do
#   gem 'pg', '0.20.0'
# end

=======
>>>>>>> e1fe6f815a4867265d81019270bc1cec102319fd
