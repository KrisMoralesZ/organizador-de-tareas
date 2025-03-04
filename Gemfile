source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.0.6'
# Use postgresql as the database for Active Record
# gem 'pg', '>= 0.18', '< 2.0'
# Use Mongo as Database
gem 'mongoid', '~> 9.0.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# ----- Gems added -----
gem 'awesome_print'
gem 'cocoon'
gem 'devise'
gem 'hamlit'
gem 'rails-i18n'
gem 'simple_form'
gem 'cancancan'
gem 'font-awesome-sass', '~> 5.12.0'
gem 'psych', '< 4'
# ----- Gems added -----

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # ----- Gems added -----
  gem 'pry'
  gem 'pry-doc'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  # ----- Gems added -----
end

group :development do
  # ----- Gems added -----
  gem 'hamlit-rails'
  gem 'letter_opener'
  # ----- Gems added -----
  gem 'listen', '~> 3.2'
  # # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  # NOTE: We comment this gems to avoid problems with 'cancancan' gem
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
  # NOTE: We comment this gems to avoid problems with 'cancancan' gem

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner', '>= 1.3.0'
  gem 'faker'
  gem 'capybara'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
