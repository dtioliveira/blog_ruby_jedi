source 'https://rubygems.org'

ruby '2.2.0'
gem 'rails', '4.2.0'

# Frontend
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'simple_form'
gem 'jquery-rails'
gem 'turbolinks'

# Authentication
gem "devise"

group :development do
  gem 'sqlite3'
  gem "pry-rails"
  gem "quiet_assets"
  gem "xray-rails", "~> 0.1.14"
  gem "start"
end

group :production do
  gem "rails_12factor"
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

