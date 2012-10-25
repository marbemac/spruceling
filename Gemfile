#source 'http://rubygems.org' # dependency api is down http://status.rubygems.org/
source 'http://bundler-api.herokuapp.com'

ruby '1.9.3'

gem 'bundler', '~> 1.2'
gem 'rails', '~> 3.2.8'

gem 'jquery-rails'
gem "devise", ">= 2.1.2"
gem 'yajl-ruby' # json
gem "bootstrap-sass", ">= 2.0.4.0"
gem 'rack-contrib'
gem 'soulmate', '0.1.3', :require => 'soulmate/server' # Redis based autocomplete storage
gem 'chronic' # Date/Time management
gem 'dalli' # memcache
gem 'stripe' # payments
gem 'cancan'
gem 'stamps', :git => 'https://github.com/marbemac/stamps.git'
gem 'cloudinary' # images
gem 'attachinary' # images
gem 'sendgrid'
gem 'newrelic_rpm', '~> 3.5.0'
gem "haml-rails", ">= 0.3.4"
gem 'omniauth'
gem 'oauth2'
gem 'omniauth-facebook'
gem 'activerecord-postgres-hstore', git: 'git://github.com/engageis/activerecord-postgres-hstore.git'
gem 'compass-rails'
gem 'annotate'
gem "pg"
gem 'kaminari'
gem "friendly_id", "~> 4.0.1"
gem 'sidekiq' # background jobs
gem 'sinatra' # for sidekiq
gem 'slim' # for sidekiq
gem 'cache_digests'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'rack-mini-profiler'
  gem 'foreman'
  gem "rspec-rails", ">= 2.11.0"
  gem "factory_girl_rails", ">= 4.0.0"
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'rb-fsevent', :require => false
  gem 'thin'
end

group :test do
  gem "rspec-rails", ">= 2.11.0"
  gem "capybara", ">= 1.1.2"
  gem "email_spec", ">= 1.2.1"
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "launchy", ">= 2.1.2"
  gem "factory_girl_rails", ">= 4.0.0"
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'database_cleaner'
  gem 'thin'
end

group :staging do
  gem 'rack-mini-profiler'
end

group :production, :staging do
  gem "rack-timeout"
  gem 'unicorn'
end